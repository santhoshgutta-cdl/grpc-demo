//
//  Generated code. Do not modify.
//  source: demo_api_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use demoApiRequestProtoDescriptor instead')
const DemoApiRequestProto$json = {
  '1': 'DemoApiRequestProto',
};

/// Descriptor for `DemoApiRequestProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List demoApiRequestProtoDescriptor = $convert.base64Decode(
    'ChNEZW1vQXBpUmVxdWVzdFByb3Rv');

@$core.Deprecated('Use demoApiResponseDataProtoDescriptor instead')
const DemoApiResponseDataProto$json = {
  '1': 'DemoApiResponseDataProto',
  '2': [
    {'1': 'integerValue', '3': 1, '4': 1, '5': 5, '10': 'integerValue'},
    {'1': 'stringValue', '3': 2, '4': 1, '5': 9, '10': 'stringValue'},
    {'1': 'longValue', '3': 3, '4': 1, '5': 3, '10': 'longValue'},
    {'1': 'doubleValue', '3': 4, '4': 1, '5': 1, '10': 'doubleValue'},
  ],
};

/// Descriptor for `DemoApiResponseDataProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List demoApiResponseDataProtoDescriptor = $convert.base64Decode(
    'ChhEZW1vQXBpUmVzcG9uc2VEYXRhUHJvdG8SIgoMaW50ZWdlclZhbHVlGAEgASgFUgxpbnRlZ2'
    'VyVmFsdWUSIAoLc3RyaW5nVmFsdWUYAiABKAlSC3N0cmluZ1ZhbHVlEhwKCWxvbmdWYWx1ZRgD'
    'IAEoA1IJbG9uZ1ZhbHVlEiAKC2RvdWJsZVZhbHVlGAQgASgBUgtkb3VibGVWYWx1ZQ==');

@$core.Deprecated('Use errorProtoDescriptor instead')
const ErrorProto$json = {
  '1': 'ErrorProto',
  '2': [
    {'1': 'code', '3': 1, '4': 1, '5': 9, '10': 'code'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ErrorProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorProtoDescriptor = $convert.base64Decode(
    'CgpFcnJvclByb3RvEhIKBGNvZGUYASABKAlSBGNvZGUSGAoHbWVzc2FnZRgCIAEoCVIHbWVzc2'
    'FnZQ==');

@$core.Deprecated('Use demoApiResponseProtoDescriptor instead')
const DemoApiResponseProto$json = {
  '1': 'DemoApiResponseProto',
  '2': [
    {'1': 'data', '3': 1, '4': 1, '5': 11, '6': '.DemoApiResponseDataProto', '10': 'data'},
    {'1': 'errors', '3': 2, '4': 3, '5': 11, '6': '.ErrorProto', '10': 'errors'},
  ],
};

/// Descriptor for `DemoApiResponseProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List demoApiResponseProtoDescriptor = $convert.base64Decode(
    'ChREZW1vQXBpUmVzcG9uc2VQcm90bxItCgRkYXRhGAEgASgLMhkuRGVtb0FwaVJlc3BvbnNlRG'
    'F0YVByb3RvUgRkYXRhEiMKBmVycm9ycxgCIAMoCzILLkVycm9yUHJvdG9SBmVycm9ycw==');

