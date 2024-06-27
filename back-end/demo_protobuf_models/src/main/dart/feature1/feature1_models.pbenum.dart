//
//  Generated code. Do not modify.
//  source: feature1/feature1_models.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ProductType extends $pb.ProtobufEnum {
  static const ProductType THRIVE = ProductType._(0, _omitEnumNames ? '' : 'THRIVE');
  static const ProductType BOOST = ProductType._(1, _omitEnumNames ? '' : 'BOOST');

  static const $core.List<ProductType> values = <ProductType> [
    THRIVE,
    BOOST,
  ];

  static final $core.Map<$core.int, ProductType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ProductType? valueOf($core.int value) => _byValue[value];

  const ProductType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
