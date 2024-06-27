//
//  Generated code. Do not modify.
//  source: feature1/feature1_models.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use productTypeDescriptor instead')
const ProductType$json = {
  '1': 'ProductType',
  '2': [
    {'1': 'THRIVE', '2': 0},
    {'1': 'BOOST', '2': 1},
  ],
};

/// Descriptor for `ProductType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List productTypeDescriptor = $convert.base64Decode(
    'CgtQcm9kdWN0VHlwZRIKCgZUSFJJVkUQABIJCgVCT09TVBAB');

@$core.Deprecated('Use feature1ModelProtoDescriptor instead')
const Feature1ModelProto$json = {
  '1': 'Feature1ModelProto',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.ProductType', '10': 'type'},
  ],
};

/// Descriptor for `Feature1ModelProto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feature1ModelProtoDescriptor = $convert.base64Decode(
    'ChJGZWF0dXJlMU1vZGVsUHJvdG8SEAoDa2V5GAEgASgJUgNrZXkSIAoEdHlwZRgCIAEoDjIMLl'
    'Byb2R1Y3RUeXBlUgR0eXBl');

