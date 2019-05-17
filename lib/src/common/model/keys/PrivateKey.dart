import 'dart:typed_data';

import 'package:pascaldart/src/common/model/keys/Curves.dart';

// Represents a PascalCoin private key
class PrivateKey {
  Uint16List key;
  Curve curve;

  PrivateKey(this.key, this.curve) {
    if (this.key.length > this.curve.lPrivateKey()) {
      throw new Exception('Invalid private key length for ${this.curve.name} - expected <= ${this.curve.lPrivateKey()}, got ${this.key.length}');
    }
  }

  Uint16List ec() {
    return this.key;
  }
}