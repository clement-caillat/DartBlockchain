import 'gripple.dart';

void main() {
  Gripple chain = new Gripple();

  Map<String, dynamic> trans = {"transaction_raw": "test.test.test", "id": 1};
  Map<String, dynamic> trans2 = {"transaction_raw": "test.test.test", "id": 2};

  chain.addTransaction(trans);
  chain.addTransaction(trans2);

  print(chain.current_block?.pending_transactions);
}
