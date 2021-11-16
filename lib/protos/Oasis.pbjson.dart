///
//  Generated code. Do not modify.
//  source: Oasis.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const TransferMessage$json = const {
  '1': 'TransferMessage',
  '2': const [
    const {'1': 'to', '3': 1, '4': 1, '5': 9, '10': 'to'},
    const {'1': 'gas_price', '3': 2, '4': 1, '5': 4, '10': 'gasPrice'},
    const {'1': 'gas_amount', '3': 3, '4': 1, '5': 9, '10': 'gasAmount'},
    const {'1': 'amount', '3': 4, '4': 1, '5': 9, '10': 'amount'},
    const {'1': 'nonce', '3': 5, '4': 1, '5': 4, '10': 'nonce'},
    const {'1': 'context', '3': 6, '4': 1, '5': 9, '10': 'context'},
  ],
};

const SigningInput$json = const {
  '1': 'SigningInput',
  '2': const [
    const {'1': 'private_key', '3': 1, '4': 1, '5': 12, '10': 'privateKey'},
    const {'1': 'transfer', '3': 2, '4': 1, '5': 11, '6': '.TW.Oasis.Proto.TransferMessage', '9': 0, '10': 'transfer'},
  ],
  '8': const [
    const {'1': 'message'},
  ],
};

const SigningOutput$json = const {
  '1': 'SigningOutput',
  '2': const [
    const {'1': 'encoded', '3': 1, '4': 1, '5': 12, '10': 'encoded'},
  ],
};

