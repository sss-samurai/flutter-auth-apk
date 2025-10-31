import 'dart:isolate';
import 'dart:math';

/// Heavy computation
int heavyComputation(int count) {
  double result = 0;
  final random = Random(42);

  for (int i = 1; i <= count; i++) {
    final val = sin(i.toDouble()) * cos(i / 2) * tan(i / 3);
    result += sqrt(i) * pow(val, 2) * log(i + 1) * random.nextDouble();

    if (i % 20000000 == 0) {}
  }

  return result.toInt();
}

class IsolateMessage {
  final int count;
  final SendPort sendPort;
  IsolateMessage(this.count, this.sendPort);
}

void heavyComputationWorker(IsolateMessage message) {
  final result = heavyComputation(message.count);
  message.sendPort.send(result);
}
