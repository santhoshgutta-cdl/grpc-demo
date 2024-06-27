//
//  Generated code. Do not modify.
//  source: demo_api_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'demo_api_service.pb.dart' as $0;

export 'demo_api_service.pb.dart';

@$pb.GrpcServiceName('DemoGrpcApiService')
class DemoGrpcApiServiceClient extends $grpc.Client {
  static final _$unaryRequestAndResponse = $grpc.ClientMethod<$0.DemoApiRequestProto, $0.DemoApiResponseProto>(
      '/DemoGrpcApiService/unaryRequestAndResponse',
      ($0.DemoApiRequestProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DemoApiResponseProto.fromBuffer(value));
  static final _$streamingRequestAndUnaryResponse = $grpc.ClientMethod<$0.DemoApiRequestProto, $0.DemoApiResponseProto>(
      '/DemoGrpcApiService/streamingRequestAndUnaryResponse',
      ($0.DemoApiRequestProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DemoApiResponseProto.fromBuffer(value));
  static final _$unaryRequestAndStreamingResponse = $grpc.ClientMethod<$0.DemoApiRequestProto, $0.DemoApiResponseProto>(
      '/DemoGrpcApiService/unaryRequestAndStreamingResponse',
      ($0.DemoApiRequestProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DemoApiResponseProto.fromBuffer(value));
  static final _$streamingRequestAndResponse = $grpc.ClientMethod<$0.DemoApiRequestProto, $0.DemoApiResponseProto>(
      '/DemoGrpcApiService/streamingRequestAndResponse',
      ($0.DemoApiRequestProto value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.DemoApiResponseProto.fromBuffer(value));

  DemoGrpcApiServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.DemoApiResponseProto> unaryRequestAndResponse($0.DemoApiRequestProto request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$unaryRequestAndResponse, request, options: options);
  }

  $grpc.ResponseFuture<$0.DemoApiResponseProto> streamingRequestAndUnaryResponse($async.Stream<$0.DemoApiRequestProto> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamingRequestAndUnaryResponse, request, options: options).single;
  }

  $grpc.ResponseStream<$0.DemoApiResponseProto> unaryRequestAndStreamingResponse($0.DemoApiRequestProto request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$unaryRequestAndStreamingResponse, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseStream<$0.DemoApiResponseProto> streamingRequestAndResponse($async.Stream<$0.DemoApiRequestProto> request, {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamingRequestAndResponse, request, options: options);
  }
}

@$pb.GrpcServiceName('DemoGrpcApiService')
abstract class DemoGrpcApiServiceBase extends $grpc.Service {
  $core.String get $name => 'DemoGrpcApiService';

  DemoGrpcApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DemoApiRequestProto, $0.DemoApiResponseProto>(
        'unaryRequestAndResponse',
        unaryRequestAndResponse_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DemoApiRequestProto.fromBuffer(value),
        ($0.DemoApiResponseProto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DemoApiRequestProto, $0.DemoApiResponseProto>(
        'streamingRequestAndUnaryResponse',
        streamingRequestAndUnaryResponse,
        true,
        false,
        ($core.List<$core.int> value) => $0.DemoApiRequestProto.fromBuffer(value),
        ($0.DemoApiResponseProto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DemoApiRequestProto, $0.DemoApiResponseProto>(
        'unaryRequestAndStreamingResponse',
        unaryRequestAndStreamingResponse_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.DemoApiRequestProto.fromBuffer(value),
        ($0.DemoApiResponseProto value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DemoApiRequestProto, $0.DemoApiResponseProto>(
        'streamingRequestAndResponse',
        streamingRequestAndResponse,
        true,
        true,
        ($core.List<$core.int> value) => $0.DemoApiRequestProto.fromBuffer(value),
        ($0.DemoApiResponseProto value) => value.writeToBuffer()));
  }

  $async.Future<$0.DemoApiResponseProto> unaryRequestAndResponse_Pre($grpc.ServiceCall call, $async.Future<$0.DemoApiRequestProto> request) async {
    return unaryRequestAndResponse(call, await request);
  }

  $async.Stream<$0.DemoApiResponseProto> unaryRequestAndStreamingResponse_Pre($grpc.ServiceCall call, $async.Future<$0.DemoApiRequestProto> request) async* {
    yield* unaryRequestAndStreamingResponse(call, await request);
  }

  $async.Future<$0.DemoApiResponseProto> unaryRequestAndResponse($grpc.ServiceCall call, $0.DemoApiRequestProto request);
  $async.Future<$0.DemoApiResponseProto> streamingRequestAndUnaryResponse($grpc.ServiceCall call, $async.Stream<$0.DemoApiRequestProto> request);
  $async.Stream<$0.DemoApiResponseProto> unaryRequestAndStreamingResponse($grpc.ServiceCall call, $0.DemoApiRequestProto request);
  $async.Stream<$0.DemoApiResponseProto> streamingRequestAndResponse($grpc.ServiceCall call, $async.Stream<$0.DemoApiRequestProto> request);
}
