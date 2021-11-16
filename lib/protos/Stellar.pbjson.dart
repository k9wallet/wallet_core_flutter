///
//  Generated code. Do not modify.
//  source: Stellar.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const Asset$json = const {
  '1': 'Asset',
  '2': const [
    const {'1': 'issuer', '3': 1, '4': 1, '5': 9, '10': 'issuer'},
    const {'1': 'alphanum4', '3': 2, '4': 1, '5': 9, '10': 'alphanum4'},
  ],
};

const OperationCreateAccount$json = const {
  '1': 'OperationCreateAccount',
  '2': const [
    const {'1': 'destination', '3': 1, '4': 1, '5': 9, '10': 'destination'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const OperationPayment$json = const {
  '1': 'OperationPayment',
  '2': const [
    const {'1': 'destination', '3': 1, '4': 1, '5': 9, '10': 'destination'},
    const {'1': 'asset', '3': 2, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.Asset', '10': 'asset'},
    const {'1': 'amount', '3': 3, '4': 1, '5': 3, '10': 'amount'},
  ],
};

const OperationChangeTrust$json = const {
  '1': 'OperationChangeTrust',
  '2': const [
    const {'1': 'asset', '3': 1, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.Asset', '10': 'asset'},
    const {'1': 'valid_before', '3': 2, '4': 1, '5': 3, '10': 'validBefore'},
  ],
};

const MemoVoid$json = const {
  '1': 'MemoVoid',
};

const MemoText$json = const {
  '1': 'MemoText',
  '2': const [
    const {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
  ],
};

const MemoId$json = const {
  '1': 'MemoId',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 3, '10': 'id'},
  ],
};

const MemoHash$json = const {
  '1': 'MemoHash',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
  ],
};

const SigningInput$json = const {
  '1': 'SigningInput',
  '2': const [
    const {'1': 'fee', '3': 1, '4': 1, '5': 5, '10': 'fee'},
    const {'1': 'sequence', '3': 2, '4': 1, '5': 3, '10': 'sequence'},
    const {'1': 'account', '3': 3, '4': 1, '5': 9, '10': 'account'},
    const {'1': 'private_key', '3': 4, '4': 1, '5': 12, '10': 'privateKey'},
    const {'1': 'passphrase', '3': 5, '4': 1, '5': 9, '10': 'passphrase'},
    const {'1': 'op_create_account', '3': 6, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.OperationCreateAccount', '9': 0, '10': 'opCreateAccount'},
    const {'1': 'op_payment', '3': 7, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.OperationPayment', '9': 0, '10': 'opPayment'},
    const {'1': 'op_change_trust', '3': 8, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.OperationChangeTrust', '9': 0, '10': 'opChangeTrust'},
    const {'1': 'memo_void', '3': 9, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.MemoVoid', '9': 1, '10': 'memoVoid'},
    const {'1': 'memo_text', '3': 10, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.MemoText', '9': 1, '10': 'memoText'},
    const {'1': 'memo_id', '3': 11, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.MemoId', '9': 1, '10': 'memoId'},
    const {'1': 'memo_hash', '3': 12, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.MemoHash', '9': 1, '10': 'memoHash'},
    const {'1': 'memo_return_hash', '3': 13, '4': 1, '5': 11, '6': '.TW.Stellar.Proto.MemoHash', '9': 1, '10': 'memoReturnHash'},
  ],
  '8': const [
    const {'1': 'operation_oneof'},
    const {'1': 'memo_type_oneof'},
  ],
};

const SigningOutput$json = const {
  '1': 'SigningOutput',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
  ],
};

