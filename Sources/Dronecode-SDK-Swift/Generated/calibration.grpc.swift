//
// DO NOT EDIT.
//
// Generated by the protocol buffer compiler.
// Source: calibration.proto
//

//
// Copyright 2018, gRPC Authors All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
import Foundation
import Dispatch
import SwiftGRPC
import SwiftProtobuf

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse?>) -> Void) throws
}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse? { return try self._receive(timeout: timeout) }
}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCallBase: ClientCallServerStreamingBase<DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGyroRequest, DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateGyro" }
}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCallTestStub: ClientCallServerStreamingTestStub<DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateGyro" }
}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse?>) -> Void) throws
}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse? { return try self._receive(timeout: timeout) }
}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCallBase: ClientCallServerStreamingBase<DronecodeSdk_Rpc_Calibration_SubscribeCalibrateAccelerometerRequest, DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateAccelerometer" }
}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCallTestStub: ClientCallServerStreamingTestStub<DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateAccelerometer" }
}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse?>) -> Void) throws
}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse? { return try self._receive(timeout: timeout) }
}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCallBase: ClientCallServerStreamingBase<DronecodeSdk_Rpc_Calibration_SubscribeCalibrateMagnetometerRequest, DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateMagnetometer" }
}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCallTestStub: ClientCallServerStreamingTestStub<DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateMagnetometer" }
}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall: ClientCallServerStreaming {
  /// Do not call this directly, call `receive()` in the protocol extension below instead.
  func _receive(timeout: DispatchTime) throws -> DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse?
  /// Call this to wait for a result. Nonblocking.
  func receive(completion: @escaping (ResultOrRPCError<DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse?>) -> Void) throws
}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall {
  /// Call this to wait for a result. Blocking.
  func receive(timeout: DispatchTime = .distantFuture) throws -> DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse? { return try self._receive(timeout: timeout) }
}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCallBase: ClientCallServerStreamingBase<DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGimbalAccelerometerRequest, DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateGimbalAccelerometer" }
}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCallTestStub: ClientCallServerStreamingTestStub<DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateGimbalAccelerometer" }
}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCall: ClientCallUnary {}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCallBase: ClientCallUnaryBase<DronecodeSdk_Rpc_Calibration_CancelRequest, DronecodeSdk_Rpc_Calibration_CancelResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCall {
  override class var method: String { return "/dronecode_sdk.rpc.calibration.CalibrationService/Cancel" }
}


/// Instantiate DronecodeSdk_Rpc_Calibration_CalibrationServiceServiceClient, then call methods of this protocol to make API calls.
internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceService: ServiceClient {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func subscribeCalibrateGyro(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGyroRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func subscribeCalibrateAccelerometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateAccelerometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func subscribeCalibrateMagnetometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateMagnetometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  func subscribeCalibrateGimbalAccelerometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGimbalAccelerometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall

  /// Synchronous. Unary.
  func cancel(_ request: DronecodeSdk_Rpc_Calibration_CancelRequest, metadata customMetadata: Metadata) throws -> DronecodeSdk_Rpc_Calibration_CancelResponse
  /// Asynchronous. Unary.
  func cancel(_ request: DronecodeSdk_Rpc_Calibration_CancelRequest, metadata customMetadata: Metadata, completion: @escaping (DronecodeSdk_Rpc_Calibration_CancelResponse?, CallResult) -> Void) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCall

}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceService {
  /// Asynchronous. Server-streaming.
  func subscribeCalibrateGyro(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGyroRequest, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall {
    return try self.subscribeCalibrateGyro(request, metadata: self.metadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  func subscribeCalibrateAccelerometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateAccelerometerRequest, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall {
    return try self.subscribeCalibrateAccelerometer(request, metadata: self.metadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  func subscribeCalibrateMagnetometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateMagnetometerRequest, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall {
    return try self.subscribeCalibrateMagnetometer(request, metadata: self.metadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  func subscribeCalibrateGimbalAccelerometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGimbalAccelerometerRequest, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall {
    return try self.subscribeCalibrateGimbalAccelerometer(request, metadata: self.metadata, completion: completion)
  }

  /// Synchronous. Unary.
  func cancel(_ request: DronecodeSdk_Rpc_Calibration_CancelRequest) throws -> DronecodeSdk_Rpc_Calibration_CancelResponse {
    return try self.cancel(request, metadata: self.metadata)
  }
  /// Asynchronous. Unary.
  func cancel(_ request: DronecodeSdk_Rpc_Calibration_CancelRequest, completion: @escaping (DronecodeSdk_Rpc_Calibration_CancelResponse?, CallResult) -> Void) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCall {
    return try self.cancel(request, metadata: self.metadata, completion: completion)
  }

}

internal final class DronecodeSdk_Rpc_Calibration_CalibrationServiceServiceClient: ServiceClientBase, DronecodeSdk_Rpc_Calibration_CalibrationServiceService {
  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func subscribeCalibrateGyro(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGyroRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall {
    return try DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func subscribeCalibrateAccelerometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateAccelerometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall {
    return try DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func subscribeCalibrateMagnetometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateMagnetometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall {
    return try DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Asynchronous. Server-streaming.
  /// Send the initial message.
  /// Use methods on the returned object to get streamed responses.
  internal func subscribeCalibrateGimbalAccelerometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGimbalAccelerometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall {
    return try DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

  /// Synchronous. Unary.
  internal func cancel(_ request: DronecodeSdk_Rpc_Calibration_CancelRequest, metadata customMetadata: Metadata) throws -> DronecodeSdk_Rpc_Calibration_CancelResponse {
    return try DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCallBase(channel)
      .run(request: request, metadata: customMetadata)
  }
  /// Asynchronous. Unary.
  internal func cancel(_ request: DronecodeSdk_Rpc_Calibration_CancelRequest, metadata customMetadata: Metadata, completion: @escaping (DronecodeSdk_Rpc_Calibration_CancelResponse?, CallResult) -> Void) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCall {
    return try DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCallBase(channel)
      .start(request: request, metadata: customMetadata, completion: completion)
  }

}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceServiceTestStub: ServiceClientTestStubBase, DronecodeSdk_Rpc_Calibration_CalibrationServiceService {
  var subscribeCalibrateGyroRequests: [DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGyroRequest] = []
  var subscribeCalibrateGyroCalls: [DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall] = []
  func subscribeCalibrateGyro(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGyroRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroCall {
    subscribeCalibrateGyroRequests.append(request)
    defer { subscribeCalibrateGyroCalls.removeFirst() }
    return subscribeCalibrateGyroCalls.first!
  }

  var subscribeCalibrateAccelerometerRequests: [DronecodeSdk_Rpc_Calibration_SubscribeCalibrateAccelerometerRequest] = []
  var subscribeCalibrateAccelerometerCalls: [DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall] = []
  func subscribeCalibrateAccelerometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateAccelerometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerCall {
    subscribeCalibrateAccelerometerRequests.append(request)
    defer { subscribeCalibrateAccelerometerCalls.removeFirst() }
    return subscribeCalibrateAccelerometerCalls.first!
  }

  var subscribeCalibrateMagnetometerRequests: [DronecodeSdk_Rpc_Calibration_SubscribeCalibrateMagnetometerRequest] = []
  var subscribeCalibrateMagnetometerCalls: [DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall] = []
  func subscribeCalibrateMagnetometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateMagnetometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerCall {
    subscribeCalibrateMagnetometerRequests.append(request)
    defer { subscribeCalibrateMagnetometerCalls.removeFirst() }
    return subscribeCalibrateMagnetometerCalls.first!
  }

  var subscribeCalibrateGimbalAccelerometerRequests: [DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGimbalAccelerometerRequest] = []
  var subscribeCalibrateGimbalAccelerometerCalls: [DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall] = []
  func subscribeCalibrateGimbalAccelerometer(_ request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGimbalAccelerometerRequest, metadata customMetadata: Metadata, completion: ((CallResult) -> Void)?) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerCall {
    subscribeCalibrateGimbalAccelerometerRequests.append(request)
    defer { subscribeCalibrateGimbalAccelerometerCalls.removeFirst() }
    return subscribeCalibrateGimbalAccelerometerCalls.first!
  }

  var cancelRequests: [DronecodeSdk_Rpc_Calibration_CancelRequest] = []
  var cancelResponses: [DronecodeSdk_Rpc_Calibration_CancelResponse] = []
  func cancel(_ request: DronecodeSdk_Rpc_Calibration_CancelRequest, metadata customMetadata: Metadata) throws -> DronecodeSdk_Rpc_Calibration_CancelResponse {
    cancelRequests.append(request)
    defer { cancelResponses.removeFirst() }
    return cancelResponses.first!
  }
  func cancel(_ request: DronecodeSdk_Rpc_Calibration_CancelRequest, metadata customMetadata: Metadata, completion: @escaping (DronecodeSdk_Rpc_Calibration_CancelResponse?, CallResult) -> Void) throws -> DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelCall {
    fatalError("not implemented")
  }

}

/// To build a server, implement a class that conforms to this protocol.
/// If one of the methods returning `ServerStatus?` returns nil,
/// it is expected that you have already returned a status to the client by means of `session.close`.
internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceProvider: ServiceProvider {
  func subscribeCalibrateGyro(request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGyroRequest, session: DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSession) throws -> ServerStatus?
  func subscribeCalibrateAccelerometer(request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateAccelerometerRequest, session: DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSession) throws -> ServerStatus?
  func subscribeCalibrateMagnetometer(request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateMagnetometerRequest, session: DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSession) throws -> ServerStatus?
  func subscribeCalibrateGimbalAccelerometer(request: DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGimbalAccelerometerRequest, session: DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSession) throws -> ServerStatus?
  func cancel(request: DronecodeSdk_Rpc_Calibration_CancelRequest, session: DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelSession) throws -> DronecodeSdk_Rpc_Calibration_CancelResponse
}

extension DronecodeSdk_Rpc_Calibration_CalibrationServiceProvider {
  internal var serviceName: String { return "dronecode_sdk.rpc.calibration.CalibrationService" }

  /// Determines and calls the appropriate request handler, depending on the request's method.
  /// Throws `HandleMethodError.unknownMethod` for methods not handled by this service.
  internal func handleMethod(_ method: String, handler: Handler) throws -> ServerStatus? {
    switch method {
    case "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateGyro":
      return try DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSessionBase(
        handler: handler,
        providerBlock: { try self.subscribeCalibrateGyro(request: $0, session: $1 as! DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSessionBase) })
          .run()
    case "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateAccelerometer":
      return try DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSessionBase(
        handler: handler,
        providerBlock: { try self.subscribeCalibrateAccelerometer(request: $0, session: $1 as! DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSessionBase) })
          .run()
    case "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateMagnetometer":
      return try DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSessionBase(
        handler: handler,
        providerBlock: { try self.subscribeCalibrateMagnetometer(request: $0, session: $1 as! DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSessionBase) })
          .run()
    case "/dronecode_sdk.rpc.calibration.CalibrationService/SubscribeCalibrateGimbalAccelerometer":
      return try DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSessionBase(
        handler: handler,
        providerBlock: { try self.subscribeCalibrateGimbalAccelerometer(request: $0, session: $1 as! DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSessionBase) })
          .run()
    case "/dronecode_sdk.rpc.calibration.CalibrationService/Cancel":
      return try DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelSessionBase(
        handler: handler,
        providerBlock: { try self.cancel(request: $0, session: $1 as! DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelSessionBase) })
          .run()
    default:
      throw HandleMethodError.unknownMethod
    }
  }
}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSessionBase: ServerSessionServerStreamingBase<DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGyroRequest, DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSession {}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSessionTestStub: ServerSessionServerStreamingTestStub<DronecodeSdk_Rpc_Calibration_CalibrateGyroResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGyroSession {}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSessionBase: ServerSessionServerStreamingBase<DronecodeSdk_Rpc_Calibration_SubscribeCalibrateAccelerometerRequest, DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSession {}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSessionTestStub: ServerSessionServerStreamingTestStub<DronecodeSdk_Rpc_Calibration_CalibrateAccelerometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateAccelerometerSession {}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSessionBase: ServerSessionServerStreamingBase<DronecodeSdk_Rpc_Calibration_SubscribeCalibrateMagnetometerRequest, DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSession {}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSessionTestStub: ServerSessionServerStreamingTestStub<DronecodeSdk_Rpc_Calibration_CalibrateMagnetometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateMagnetometerSession {}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSession: ServerSessionServerStreaming {
  /// Send a message to the stream. Nonblocking.
  func send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse, completion: @escaping (Error?) -> Void) throws
  /// Do not call this directly, call `send()` in the protocol extension below instead.
  func _send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse, timeout: DispatchTime) throws

  /// Close the connection and send the status. Non-blocking.
  /// This method should be called if and only if your request handler returns a nil value instead of a server status;
  /// otherwise SwiftGRPC will take care of sending the status for you.
  func close(withStatus status: ServerStatus, completion: (() -> Void)?) throws
}

internal extension DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSession {
  /// Send a message to the stream and wait for the send operation to finish. Blocking.
  func send(_ message: DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse, timeout: DispatchTime = .distantFuture) throws { try self._send(message, timeout: timeout) }
}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSessionBase: ServerSessionServerStreamingBase<DronecodeSdk_Rpc_Calibration_SubscribeCalibrateGimbalAccelerometerRequest, DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSession {}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSessionTestStub: ServerSessionServerStreamingTestStub<DronecodeSdk_Rpc_Calibration_CalibrateGimbalAccelerometerResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceSubscribeCalibrateGimbalAccelerometerSession {}

internal protocol DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelSession: ServerSessionUnary {}

fileprivate final class DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelSessionBase: ServerSessionUnaryBase<DronecodeSdk_Rpc_Calibration_CancelRequest, DronecodeSdk_Rpc_Calibration_CancelResponse>, DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelSession {}

class DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelSessionTestStub: ServerSessionUnaryTestStub, DronecodeSdk_Rpc_Calibration_CalibrationServiceCancelSession {}

