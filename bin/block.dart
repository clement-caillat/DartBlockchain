import 'dart:io';
import 'package:crypto/crypto.dart';
import 'dart:convert';

class Block {
  int block_index = 0;
  String previous_hash = '';

  List<Map> pending_transactions = [];
  String raw_transactions = '';

  Block(String prev_hash) {
    this.block_index = Directory('./bin/.blocks').listSync().length;
    this.previous_hash = prev_hash;
  }

  void add_transaction(Map transaction) {
    this.pending_transactions.add(transaction);
    this.raw_transactions += transaction['transaction_raw'] + '.';
  }

  String? signBlock() {
    if (this.pending_transactions.length == 0) return null;
    if (this.pending_transactions.length == 1 &&
        this.pending_transactions[0]['sender'] == "REWARDS") return null;

    String blockIndex = this.block_index.toString() + 'x';
    var date = DateTime.now().millisecondsSinceEpoch / 1000;
    String raw_transactions = this.raw_transactions;
    String merkleroot =
        sha256.convert(utf8.encode(this.raw_transactions)).toString();
    int reward = 5;

    // String raw =
  }
}
