///
//  Generated code. Do not modify.
//  source: xiao_auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'xiao_auth.pb.dart' as $0;
export 'xiao_auth.pb.dart';

class AuthServiceClient extends $grpc.Client {
  static final _$getToken =
      $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
          '/grpc.AuthService/GetToken',
          ($0.LoginRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$register =
      $grpc.ClientMethod<$0.RegisterRequest, $0.RegisterResponse>(
          '/grpc.AuthService/Register',
          ($0.RegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegisterResponse.fromBuffer(value));
  static final _$changePwd =
      $grpc.ClientMethod<$0.ChangePwdRequest, $0.ChangePwdResponse>(
          '/grpc.AuthService/ChangePwd',
          ($0.ChangePwdRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChangePwdResponse.fromBuffer(value));

  AuthServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.LoginResponse> getToken($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.RegisterResponse> register($0.RegisterRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$register, request, options: options);
  }

  $grpc.ResponseFuture<$0.ChangePwdResponse> changePwd(
      $0.ChangePwdRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$changePwd, request, options: options);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc.AuthService';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'GetToken',
        getToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.RegisterResponse>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.RegisterResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangePwdRequest, $0.ChangePwdResponse>(
        'ChangePwd',
        changePwd_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChangePwdRequest.fromBuffer(value),
        ($0.ChangePwdResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> getToken_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return getToken(call, await request);
  }

  $async.Future<$0.RegisterResponse> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.ChangePwdResponse> changePwd_Pre($grpc.ServiceCall call,
      $async.Future<$0.ChangePwdRequest> request) async {
    return changePwd(call, await request);
  }

  $async.Future<$0.LoginResponse> getToken(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.RegisterResponse> register(
      $grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.ChangePwdResponse> changePwd(
      $grpc.ServiceCall call, $0.ChangePwdRequest request);
}
