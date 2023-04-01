///
//  Generated code. Do not modify.
//  source: xiao_grpc.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use recordDescriptor instead')
const Record$json = const {
  '1': 'Record',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 2, '10': 'amount'},
    const {'1': 'category_id', '3': 2, '4': 1, '5': 9, '10': 'categoryId'},
    const {'1': 'account_id', '3': 3, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    const {'1': 'note', '3': 5, '4': 1, '5': 9, '10': 'note'},
  ],
};

/// Descriptor for `Record`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordDescriptor = $convert.base64Decode('CgZSZWNvcmQSFgoGYW1vdW50GAEgASgCUgZhbW91bnQSHwoLY2F0ZWdvcnlfaWQYAiABKAlSCmNhdGVnb3J5SWQSHQoKYWNjb3VudF9pZBgDIAEoCVIJYWNjb3VudElkEjgKCXRpbWVzdGFtcBgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCXRpbWVzdGFtcBISCgRub3RlGAUgASgJUgRub3Rl');
@$core.Deprecated('Use recordReployDescriptor instead')
const RecordReploy$json = const {
  '1': 'RecordReploy',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'records', '3': 2, '4': 1, '5': 11, '6': '.grpc.Record', '10': 'records'},
  ],
};

/// Descriptor for `RecordReploy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordReployDescriptor = $convert.base64Decode('CgxSZWNvcmRSZXBsb3kSEgoEY29kZRgBIAEoCVIEY29kZRImCgdyZWNvcmRzGAIgASgLMgwuZ3JwYy5SZWNvcmRSB3JlY29yZHM=');
@$core.Deprecated('Use recordsReployDescriptor instead')
const RecordsReploy$json = const {
  '1': 'RecordsReploy',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'records', '3': 2, '4': 3, '5': 11, '6': '.grpc.Record', '10': 'records'},
  ],
};

/// Descriptor for `RecordsReploy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List recordsReployDescriptor = $convert.base64Decode('Cg1SZWNvcmRzUmVwbG95EhIKBGNvZGUYASABKAlSBGNvZGUSJgoHcmVjb3JkcxgCIAMoCzIMLmdycGMuUmVjb3JkUgdyZWNvcmRz');
@$core.Deprecated('Use receiptDescriptor instead')
const Receipt$json = const {
  '1': 'Receipt',
  '2': const [
    const {'1': 'amount', '3': 1, '4': 1, '5': 1, '10': 'amount'},
    const {'1': 'shop_name', '3': 2, '4': 1, '5': 9, '10': 'shopName'},
    const {'1': 'datetime', '3': 3, '4': 1, '5': 9, '10': 'datetime'},
    const {'1': 'note', '3': 4, '4': 1, '5': 9, '10': 'note'},
  ],
};

/// Descriptor for `Receipt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiptDescriptor = $convert.base64Decode('CgdSZWNlaXB0EhYKBmFtb3VudBgBIAEoAVIGYW1vdW50EhsKCXNob3BfbmFtZRgCIAEoCVIIc2hvcE5hbWUSGgoIZGF0ZXRpbWUYAyABKAlSCGRhdGV0aW1lEhIKBG5vdGUYBCABKAlSBG5vdGU=');
@$core.Deprecated('Use receiptReplyDescriptor instead')
const ReceiptReply$json = const {
  '1': 'ReceiptReply',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'receipt', '3': 2, '4': 1, '5': 11, '6': '.grpc.Receipt', '10': 'receipt'},
  ],
};

/// Descriptor for `ReceiptReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List receiptReplyDescriptor = $convert.base64Decode('CgxSZWNlaXB0UmVwbHkSEgoEY29kZRgBIAEoBVIEY29kZRInCgdyZWNlaXB0GAIgASgLMg0uZ3JwYy5SZWNlaXB0UgdyZWNlaXB0');
@$core.Deprecated('Use iDDescriptor instead')
const ID$json = const {
  '1': 'ID',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iDDescriptor = $convert.base64Decode('CgJJRBIOCgJpZBgBIAEoCVICaWQ=');
@$core.Deprecated('Use imgFileDescriptor instead')
const ImgFile$json = const {
  '1': 'ImgFile',
  '2': const [
    const {'1': 'content', '3': 1, '4': 1, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `ImgFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imgFileDescriptor = $convert.base64Decode('CgdJbWdGaWxlEhgKB2NvbnRlbnQYASABKAxSB2NvbnRlbnQ=');
@$core.Deprecated('Use operationReplyDescriptor instead')
const OperationReply$json = const {
  '1': 'OperationReply',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    const {'1': 'msg', '3': 2, '4': 1, '5': 9, '10': 'msg'},
  ],
};

/// Descriptor for `OperationReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List operationReplyDescriptor = $convert.base64Decode('Cg5PcGVyYXRpb25SZXBseRISCgRjb2RlGAEgASgJUgRjb2RlEhAKA21zZxgCIAEoCVIDbXNn');
