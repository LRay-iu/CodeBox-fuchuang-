///
//  Generated code. Do not modify.
//  source: xiao_grpc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'xiao_grpc.pb.dart' as $0;
export 'xiao_grpc.pb.dart';

class XiaoGRPCClient extends $grpc.Client {
  static final _$addRecord = $grpc.ClientMethod<$0.Record, $0.OperationReply>(
      '/grpc.XiaoGRPC/AddRecord',
      ($0.Record value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OperationReply.fromBuffer(value));
  static final _$updateRecord =
      $grpc.ClientMethod<$0.Record, $0.OperationReply>(
          '/grpc.XiaoGRPC/UpdateRecord',
          ($0.Record value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.OperationReply.fromBuffer(value));
  static final _$deleteRecord = $grpc.ClientMethod<$0.ID, $0.OperationReply>(
      '/grpc.XiaoGRPC/DeleteRecord',
      ($0.ID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.OperationReply.fromBuffer(value));
  static final _$getRecord = $grpc.ClientMethod<$0.ID, $0.RecordReploy>(
      '/grpc.XiaoGRPC/GetRecord',
      ($0.ID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RecordReploy.fromBuffer(value));
  static final _$getRecords = $grpc.ClientMethod<$0.ID, $0.RecordsReploy>(
      '/grpc.XiaoGRPC/GetRecords',
      ($0.ID value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.RecordsReploy.fromBuffer(value));
  static final _$recognizeReceipt =
      $grpc.ClientMethod<$0.ImgFile, $0.ReceiptReply>(
          '/grpc.XiaoGRPC/RecognizeReceipt',
          ($0.ImgFile value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ReceiptReply.fromBuffer(value));

  XiaoGRPCClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.OperationReply> addRecord($0.Record request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addRecord, request, options: options);
  }

  $grpc.ResponseFuture<$0.OperationReply> updateRecord($0.Record request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateRecord, request, options: options);
  }

  $grpc.ResponseFuture<$0.OperationReply> deleteRecord($0.ID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteRecord, request, options: options);
  }

  $grpc.ResponseFuture<$0.RecordReploy> getRecord($0.ID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecord, request, options: options);
  }

  $grpc.ResponseFuture<$0.RecordsReploy> getRecords($0.ID request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRecords, request, options: options);
  }

  $grpc.ResponseFuture<$0.ReceiptReply> recognizeReceipt($0.ImgFile request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$recognizeReceipt, request, options: options);
  }
}

abstract class XiaoGRPCServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc.XiaoGRPC';

  XiaoGRPCServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Record, $0.OperationReply>(
        'AddRecord',
        addRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Record.fromBuffer(value),
        ($0.OperationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Record, $0.OperationReply>(
        'UpdateRecord',
        updateRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Record.fromBuffer(value),
        ($0.OperationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ID, $0.OperationReply>(
        'DeleteRecord',
        deleteRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ID.fromBuffer(value),
        ($0.OperationReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ID, $0.RecordReploy>(
        'GetRecord',
        getRecord_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ID.fromBuffer(value),
        ($0.RecordReploy value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ID, $0.RecordsReploy>(
        'GetRecords',
        getRecords_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ID.fromBuffer(value),
        ($0.RecordsReploy value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImgFile, $0.ReceiptReply>(
        'RecognizeReceipt',
        recognizeReceipt_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImgFile.fromBuffer(value),
        ($0.ReceiptReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.OperationReply> addRecord_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Record> request) async {
    return addRecord(call, await request);
  }

  $async.Future<$0.OperationReply> updateRecord_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Record> request) async {
    return updateRecord(call, await request);
  }

  $async.Future<$0.OperationReply> deleteRecord_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ID> request) async {
    return deleteRecord(call, await request);
  }

  $async.Future<$0.RecordReploy> getRecord_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ID> request) async {
    return getRecord(call, await request);
  }

  $async.Future<$0.RecordsReploy> getRecords_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ID> request) async {
    return getRecords(call, await request);
  }

  $async.Future<$0.ReceiptReply> recognizeReceipt_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ImgFile> request) async {
    return recognizeReceipt(call, await request);
  }

  $async.Future<$0.OperationReply> addRecord(
      $grpc.ServiceCall call, $0.Record request);
  $async.Future<$0.OperationReply> updateRecord(
      $grpc.ServiceCall call, $0.Record request);
  $async.Future<$0.OperationReply> deleteRecord(
      $grpc.ServiceCall call, $0.ID request);
  $async.Future<$0.RecordReploy> getRecord(
      $grpc.ServiceCall call, $0.ID request);
  $async.Future<$0.RecordsReploy> getRecords(
      $grpc.ServiceCall call, $0.ID request);
  $async.Future<$0.ReceiptReply> recognizeReceipt(
      $grpc.ServiceCall call, $0.ImgFile request);
}
