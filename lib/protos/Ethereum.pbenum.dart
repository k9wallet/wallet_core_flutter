///
//  Generated code. Do not modify.
//  source: Ethereum.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class TransactionMode extends $pb.ProtobufEnum {
  static const TransactionMode Legacy = TransactionMode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Legacy');
  static const TransactionMode Enveloped = TransactionMode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'Enveloped');

  static const $core.List<TransactionMode> values = <TransactionMode> [
    Legacy,
    Enveloped,
  ];

  static final $core.Map<$core.int, TransactionMode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static TransactionMode? valueOf($core.int value) => _byValue[value];

  const TransactionMode._($core.int v, $core.String n) : super(v, n);
}

