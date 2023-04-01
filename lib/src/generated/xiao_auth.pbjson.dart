///
//  Generated code. Do not modify.
//  source: xiao_auth.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use loginResponseDescriptor instead')
const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
    const {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `LoginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginResponseDescriptor = $convert.base64Decode('Cg1Mb2dpblJlc3BvbnNlEhIKBGNvZGUYASABKAVSBGNvZGUSIQoMYWNjZXNzX3Rva2VuGAIgASgJUgthY2Nlc3NUb2tlbg==');
@$core.Deprecated('Use registerRequestDescriptor instead')
const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `RegisterRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerRequestDescriptor = $convert.base64Decode('Cg9SZWdpc3RlclJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use registerResponseDescriptor instead')
const RegisterResponse$json = const {
  '1': 'RegisterResponse',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `RegisterResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerResponseDescriptor = $convert.base64Decode('ChBSZWdpc3RlclJlc3BvbnNlEhIKBGNvZGUYASABKAVSBGNvZGU=');
@$core.Deprecated('Use changePwdRequestDescriptor instead')
const ChangePwdRequest$json = const {
  '1': 'ChangePwdRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'old_password', '3': 2, '4': 1, '5': 9, '10': 'oldPassword'},
    const {'1': 'new_password', '3': 3, '4': 1, '5': 9, '10': 'newPassword'},
  ],
};

/// Descriptor for `ChangePwdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePwdRequestDescriptor = $convert.base64Decode('ChBDaGFuZ2VQd2RSZXF1ZXN0EhoKCHVzZXJuYW1lGAEgASgJUgh1c2VybmFtZRIhCgxvbGRfcGFzc3dvcmQYAiABKAlSC29sZFBhc3N3b3JkEiEKDG5ld19wYXNzd29yZBgDIAEoCVILbmV3UGFzc3dvcmQ=');
@$core.Deprecated('Use changePwdResponseDescriptor instead')
const ChangePwdResponse$json = const {
  '1': 'ChangePwdResponse',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `ChangePwdResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List changePwdResponseDescriptor = $convert.base64Decode('ChFDaGFuZ2VQd2RSZXNwb25zZRISCgRjb2RlGAEgASgFUgRjb2Rl');
