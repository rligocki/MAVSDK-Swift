import Foundation
import gRPC
import RxSwift

// MARK: - Position
public struct Position: Equatable {
    public let latitudeDeg: Double
    public let longitudeDeg: Double
    public let absoluteAltitudeM: Float
    public let relativeAltitudeM: Float

    public static func == (lhs: Position, rhs: Position) -> Bool {
        return lhs.latitudeDeg == rhs.latitudeDeg
            && lhs.longitudeDeg == rhs.longitudeDeg
            && lhs.absoluteAltitudeM == rhs.absoluteAltitudeM
            && lhs.relativeAltitudeM == rhs.relativeAltitudeM
    }
}

// MARK: - Health
public struct Health: Equatable {
    public let isGyrometerCalibrationOk: Bool
    public let isAccelerometerCalibrationOk: Bool
    public let isMagnetometerCalibrationOk: Bool
    public let isLevelCalibrationOk: Bool
    public let isLocalPositionOk: Bool
    public let isGlobalPositionOk: Bool
    public let isHomePositionOk: Bool

    public static func == (lhs: Health, rhs: Health) -> Bool {
        return lhs.isGyrometerCalibrationOk == rhs.isGyrometerCalibrationOk
            && lhs.isAccelerometerCalibrationOk == rhs.isAccelerometerCalibrationOk
            && lhs.isMagnetometerCalibrationOk == rhs.isMagnetometerCalibrationOk
            && lhs.isLevelCalibrationOk == rhs.isLevelCalibrationOk
            && lhs.isLocalPositionOk == rhs.isLocalPositionOk
            && lhs.isGlobalPositionOk == rhs.isGlobalPositionOk
            && lhs.isHomePositionOk == rhs.isHomePositionOk
    }
}

// MARK: - Battery
public struct Battery: Equatable {
    public let remainingPercent: Float
    public let voltageV: Float
    
    public static func == (lhs: Battery, rhs: Battery) -> Bool {
        return lhs.remainingPercent == rhs.remainingPercent
            && lhs.voltageV == rhs.voltageV
    }
}

// MARK: - EulerAngle
public struct EulerAngle: Equatable {
    public let pitchDeg: Float
    public let rollDeg: Float
    public let yawDeg: Float
    
    public static func == (lhs: EulerAngle, rhs: EulerAngle) -> Bool {
        return lhs.pitchDeg == rhs.pitchDeg
            && lhs.rollDeg == rhs.rollDeg
            && lhs.yawDeg == rhs.yawDeg
    }
}

// MARK: - TELEMETRY
public class Telemetry {
    private let service: Dronecore_Rpc_Telemetry_TelemetryServiceService
    private let scheduler: SchedulerType
    
    public lazy var positionObservable: Observable<Position> = createPositionObservable()
    public lazy var healthObservable: Observable<Health> = createHealthObservable()
    public lazy var batteryObservable: Observable<Battery> = createBatteryObservable()
    public lazy var attitudeEulerObservable: Observable<EulerAngle> = createAttitudeEulerObservable()
    public lazy var cameraAttitudeEulerObservable: Observable<EulerAngle> = createCameraAttitudeEulerObservable()

    public convenience init(address: String, port: Int) {
        let service = Dronecore_Rpc_Telemetry_TelemetryServiceServiceClient(address: "\(address):\(port)", secure: false)
        let scheduler = ConcurrentDispatchQueueScheduler(qos: .background)

        self.init(service: service, scheduler: scheduler)
    }

    init(service: Dronecore_Rpc_Telemetry_TelemetryServiceService, scheduler: SchedulerType) {
        self.service = service
        self.scheduler = scheduler
    }

    // MARK: - Public functions
    public lazy var positionObservable: Observable<Position> = {
        return createPositionObservable()
    }()
    
    public lazy var healthObservable: Observable<Health> = {
        return createHealthObservable()
    }()
    
    public lazy var batteryObservable: Observable<Battery> = {
        return createBatteryObservable()
    }()
    
    public lazy var attitudeEulerObservable: Observable<EulerAngle> = {
        return createAttitudeEulerObservable()
    }()
    
    public lazy var cameraAttitudeEulerObservable: Observable<EulerAngle> = {
        return createCameraAttitudeEulerObservable()
    }()
    
    public lazy var homePositionObservable: Observable<Position> = {
        return createHomePositionObservable()
    }()
    
    public func isInAir() -> Single<Bool> {
        return Single<Bool>.create { single in
            let inAirRequest = Dronecore_Rpc_Telemetry_SubscribeInAirRequest()
            do {
                let inAirResponse = try self.service.subscribeinair(inAirRequest, completion: nil)
                while let response = try? inAirResponse.receive() {
                    single(.success(response.isInAir))
                }
                return Disposables.create {}
            } catch {
                single(.error(error))
                return Disposables.create {}
            }
        }
    }
    
    public func isArmed() -> Single<Bool> {
        return Single<Bool>.create { single in
            let armedRequest = Dronecore_Rpc_Telemetry_SubscribeArmedRequest()
            do {
                let armedResponse = try self.service.subscribearmed(armedRequest, completion: nil)
                while let response = try? armedResponse.receive() {
                    single(.success(response.isArmed))
                }
                return Disposables.create {}
            } catch {
                single(.error(error))
                return Disposables.create {}
            }
        }
    }
    
    // MARK: - Privates functions
    private func createPositionObservable() -> Observable<Position> {
        return Observable.create { observer in
            let positionRequest = Dronecore_Rpc_Telemetry_SubscribePositionRequest()

            do {
                let call = try self.service.subscribeposition(positionRequest, completion: nil)
                while let response = try? call.receive() {
                    let position = Position(latitudeDeg: response.position.latitudeDeg, longitudeDeg: response.position.longitudeDeg, absoluteAltitudeM: response.position.absoluteAltitudeM, relativeAltitudeM: response.position.relativeAltitudeM)

                    observer.onNext(position)
                }
            } catch {
                observer.onError("Failed to subscribe to discovery stream")
            }

            return Disposables.create()
        }.subscribeOn(self.scheduler)
    }
    
    private func createHealthObservable() -> Observable<Health> {
        return Observable.create { observer in
            let healthRequest = Dronecore_Rpc_Telemetry_SubscribeHealthRequest()

            do {
                let call = try self.service.subscribehealth(healthRequest, completion: nil)
                while let response = try? call.receive() {
                    let health = Health(isGyrometerCalibrationOk: response.health.isGyrometerCalibrationOk, isAccelerometerCalibrationOk: response.health.isAccelerometerCalibrationOk, isMagnetometerCalibrationOk: response.health.isMagnetometerCalibrationOk, isLevelCalibrationOk: response.health.isLevelCalibrationOk, isLocalPositionOk: response.health.isLocalPositionOk, isGlobalPositionOk: response.health.isGlobalPositionOk, isHomePositionOk: response.health.isHomePositionOk)

                    observer.onNext(health)
                }
            } catch {
                observer.onError("Failed to subscribe to health stream")
            }

            return Disposables.create()
        }.subscribeOn(self.scheduler)
    }
    
    private func createBatteryObservable() -> Observable<Battery> {
        return Observable.create { observer in
            let batteryRequest = Dronecore_Rpc_Telemetry_SubscribeBatteryRequest()
            
            do {
                let call = try self.service.subscribebattery(batteryRequest, completion: nil)
                while let response = try? call.receive() {
                    let battery = Battery(remainingPercent: response.battery.remainingPercent, voltageV: response.battery.voltageV)
    
                    observer.onNext(battery)
                }
            } catch {
                observer.onError("Failed to subscribe to battery stream")
            }
            
            return Disposables.create()
        }.subscribeOn(self.scheduler)
    }
    
    private func createAttitudeEulerObservable() -> Observable<EulerAngle> {
        return Observable.create { observer in
            let attitudeRequest = Dronecore_Rpc_Telemetry_SubscribeAttitudeEulerRequest()
            
            do {
                let call = try self.service.subscribeattitudeeuler(attitudeRequest, completion: nil)
                while let response = try? call.receive() {
                    
                    let attitude = EulerAngle(pitchDeg: response.attitudeEuler.pitchDeg, rollDeg: response.attitudeEuler.rollDeg, yawDeg: response.attitudeEuler.yawDeg)
                    
                    observer.onNext(attitude)
                }
            } catch {
                observer.onError("Failed to subscribe to attitude euler stream")
            }
            
            return Disposables.create()
            }.subscribeOn(self.scheduler)
    }
    
    private func createCameraAttitudeEulerObservable() -> Observable<EulerAngle> {
        return Observable.create { observer in
            let cameraAttitudeRequest = Dronecore_Rpc_Telemetry_SubscribeCameraAttitudeEulerRequest()
            
            do {
                let call = try self.service.subscribecameraattitudeeuler(cameraAttitudeRequest, completion: nil)
                while let response = try? call.receive() {
                    
                    let attitude = EulerAngle(pitchDeg: response.attitudeEuler.pitchDeg, rollDeg: response.attitudeEuler.rollDeg, yawDeg: response.attitudeEuler.yawDeg)
                    
                    observer.onNext(attitude)
                }
            } catch {
                observer.onError("Failed to subscribe to camera attitude stream")
            }
            
            return Disposables.create()
            }.subscribeOn(self.scheduler)
    }
    
    private func createHomePositionObservable() -> Observable<Position> {
        return Observable.create { observer in
            let homeRequest = Dronecore_Rpc_Telemetry_SubscribeHomeRequest()
            
            do {
                let call = try self.service.subscribehome(homeRequest, completion: nil)
                while let response = try? call.receive() {
                    let position = Position(latitudeDeg: response.home.latitudeDeg, longitudeDeg: response.home.longitudeDeg, absoluteAltitudeM: response.home.absoluteAltitudeM, relativeAltitudeM: response.home.relativeAltitudeM)
                    observer.onNext(position)
                }
            } catch {
                observer.onError("Failed to subscribe to home stream")
            }
            
            return Disposables.create()
            }.subscribeOn(self.scheduler)
    }

}
