import 'block.dart';
import 'lib/utils.dart';
import 'logger.dart';

class Gripple {
  Block? current_block;

  Gripple() {
    this.current_block = new Block(getPreviousHash());
    Logger.log("Initializing blockchain");
    Logger.warn("Oh a simple warning !");
    Logger.error("Oh no ! An error !");
    Logger.progressBar(50, 400);
  }

  void addTransaction(Map transaction) {
    this.current_block?.add_transaction(transaction);
  }

  // Block? getBlock() {
  //   if (this.current_block != null) return this.current_block;
  //   return null;
  // }
}
