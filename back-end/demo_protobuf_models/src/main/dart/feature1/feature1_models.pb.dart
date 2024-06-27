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

import 'feature1_models.pbenum.dart';

export 'feature1_models.pbenum.dart';

class Feature1ModelProto extends $pb.GeneratedMessage {
  factory Feature1ModelProto({
    $core.String? key,
    ProductType? type,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  Feature1ModelProto._() : super();
  factory Feature1ModelProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Feature1ModelProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Feature1ModelProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..e<ProductType>(2, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ProductType.THRIVE, valueOf: ProductType.valueOf, enumValues: ProductType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Feature1ModelProto clone() => Feature1ModelProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Feature1ModelProto copyWith(void Function(Feature1ModelProto) updates) => super.copyWith((message) => updates(message as Feature1ModelProto)) as Feature1ModelProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Feature1ModelProto create() => Feature1ModelProto._();
  Feature1ModelProto createEmptyInstance() => create();
  static $pb.PbList<Feature1ModelProto> createRepeated() => $pb.PbList<Feature1ModelProto>();
  @$core.pragma('dart2js:noInline')
  static Feature1ModelProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feature1ModelProto>(create);
  static Feature1ModelProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  @$pb.TagNumber(2)
  ProductType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(ProductType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
