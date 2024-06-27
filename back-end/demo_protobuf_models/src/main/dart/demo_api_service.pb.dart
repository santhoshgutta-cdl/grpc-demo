//
//  Generated code. Do not modify.
//  source: demo_api_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

class DemoApiRequestProto extends $pb.GeneratedMessage {
  factory DemoApiRequestProto() => create();
  DemoApiRequestProto._() : super();
  factory DemoApiRequestProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DemoApiRequestProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DemoApiRequestProto', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DemoApiRequestProto clone() => DemoApiRequestProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DemoApiRequestProto copyWith(void Function(DemoApiRequestProto) updates) => super.copyWith((message) => updates(message as DemoApiRequestProto)) as DemoApiRequestProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DemoApiRequestProto create() => DemoApiRequestProto._();
  DemoApiRequestProto createEmptyInstance() => create();
  static $pb.PbList<DemoApiRequestProto> createRepeated() => $pb.PbList<DemoApiRequestProto>();
  @$core.pragma('dart2js:noInline')
  static DemoApiRequestProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DemoApiRequestProto>(create);
  static DemoApiRequestProto? _defaultInstance;
}

class DemoApiResponseDataProto extends $pb.GeneratedMessage {
  factory DemoApiResponseDataProto({
    $core.int? integerValue,
    $core.String? stringValue,
    $fixnum.Int64? longValue,
    $core.double? doubleValue,
  }) {
    final $result = create();
    if (integerValue != null) {
      $result.integerValue = integerValue;
    }
    if (stringValue != null) {
      $result.stringValue = stringValue;
    }
    if (longValue != null) {
      $result.longValue = longValue;
    }
    if (doubleValue != null) {
      $result.doubleValue = doubleValue;
    }
    return $result;
  }
  DemoApiResponseDataProto._() : super();
  factory DemoApiResponseDataProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DemoApiResponseDataProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DemoApiResponseDataProto', createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'integerValue', $pb.PbFieldType.O3, protoName: 'integerValue')
    ..aOS(2, _omitFieldNames ? '' : 'stringValue', protoName: 'stringValue')
    ..aInt64(3, _omitFieldNames ? '' : 'longValue', protoName: 'longValue')
    ..a<$core.double>(4, _omitFieldNames ? '' : 'doubleValue', $pb.PbFieldType.OD, protoName: 'doubleValue')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DemoApiResponseDataProto clone() => DemoApiResponseDataProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DemoApiResponseDataProto copyWith(void Function(DemoApiResponseDataProto) updates) => super.copyWith((message) => updates(message as DemoApiResponseDataProto)) as DemoApiResponseDataProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DemoApiResponseDataProto create() => DemoApiResponseDataProto._();
  DemoApiResponseDataProto createEmptyInstance() => create();
  static $pb.PbList<DemoApiResponseDataProto> createRepeated() => $pb.PbList<DemoApiResponseDataProto>();
  @$core.pragma('dart2js:noInline')
  static DemoApiResponseDataProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DemoApiResponseDataProto>(create);
  static DemoApiResponseDataProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get integerValue => $_getIZ(0);
  @$pb.TagNumber(1)
  set integerValue($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIntegerValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearIntegerValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get stringValue => $_getSZ(1);
  @$pb.TagNumber(2)
  set stringValue($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStringValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearStringValue() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get longValue => $_getI64(2);
  @$pb.TagNumber(3)
  set longValue($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLongValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearLongValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get doubleValue => $_getN(3);
  @$pb.TagNumber(4)
  set doubleValue($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDoubleValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearDoubleValue() => clearField(4);
}

class ErrorProto extends $pb.GeneratedMessage {
  factory ErrorProto({
    $core.String? code,
    $core.String? message,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  ErrorProto._() : super();
  factory ErrorProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ErrorProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ErrorProto', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'code')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ErrorProto clone() => ErrorProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ErrorProto copyWith(void Function(ErrorProto) updates) => super.copyWith((message) => updates(message as ErrorProto)) as ErrorProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ErrorProto create() => ErrorProto._();
  ErrorProto createEmptyInstance() => create();
  static $pb.PbList<ErrorProto> createRepeated() => $pb.PbList<ErrorProto>();
  @$core.pragma('dart2js:noInline')
  static ErrorProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ErrorProto>(create);
  static ErrorProto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get code => $_getSZ(0);
  @$pb.TagNumber(1)
  set code($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class DemoApiResponseProto extends $pb.GeneratedMessage {
  factory DemoApiResponseProto({
    DemoApiResponseDataProto? data,
    $core.Iterable<ErrorProto>? errors,
  }) {
    final $result = create();
    if (data != null) {
      $result.data = data;
    }
    if (errors != null) {
      $result.errors.addAll(errors);
    }
    return $result;
  }
  DemoApiResponseProto._() : super();
  factory DemoApiResponseProto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DemoApiResponseProto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DemoApiResponseProto', createEmptyInstance: create)
    ..aOM<DemoApiResponseDataProto>(1, _omitFieldNames ? '' : 'data', subBuilder: DemoApiResponseDataProto.create)
    ..pc<ErrorProto>(2, _omitFieldNames ? '' : 'errors', $pb.PbFieldType.PM, subBuilder: ErrorProto.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DemoApiResponseProto clone() => DemoApiResponseProto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DemoApiResponseProto copyWith(void Function(DemoApiResponseProto) updates) => super.copyWith((message) => updates(message as DemoApiResponseProto)) as DemoApiResponseProto;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DemoApiResponseProto create() => DemoApiResponseProto._();
  DemoApiResponseProto createEmptyInstance() => create();
  static $pb.PbList<DemoApiResponseProto> createRepeated() => $pb.PbList<DemoApiResponseProto>();
  @$core.pragma('dart2js:noInline')
  static DemoApiResponseProto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DemoApiResponseProto>(create);
  static DemoApiResponseProto? _defaultInstance;

  @$pb.TagNumber(1)
  DemoApiResponseDataProto get data => $_getN(0);
  @$pb.TagNumber(1)
  set data(DemoApiResponseDataProto v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasData() => $_has(0);
  @$pb.TagNumber(1)
  void clearData() => clearField(1);
  @$pb.TagNumber(1)
  DemoApiResponseDataProto ensureData() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<ErrorProto> get errors => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
