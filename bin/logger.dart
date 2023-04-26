import 'dart:io';

class Logger {
  static void log(String log) {
    String date = _getLogTime();
    print('[$date] [LOG] : $log');
  }

  static void warn(String log) {
    String date = _getLogTime();
    print('\x1B[33m[$date] [WARNING] : $log\x1B[0m');
  }

  static void error(String log) {
    String date = _getLogTime();

    print('\x1B[31m[$date] [ERROR] : $log\x1B[0m');
  }

  static void progressBar(final int total, final int time) {
    for (int i = 0; i < total; i++) {
      stdout.write(
          '\r[${'=' * i}${' ' * (total - i)}] ${((i / total) * 100).toStringAsFixed(0)}%');
      sleep(Duration(milliseconds: time));
    }
    stdout.write('\n');
  }

  static String _getLogTime() {
    var timestamp = DateTime.now().millisecondsSinceEpoch;
    var date = DateTime.fromMillisecondsSinceEpoch(timestamp);
    String d = date.hour.toString() +
        ':' +
        date.minute.toString().padLeft(2, '0') +
        ':' +
        date.second.toString().padLeft(2, '0');

    return d;
  }
}
