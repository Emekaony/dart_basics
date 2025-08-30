import 'dart:async';

int cnt = 0;
void main() {
  const Duration duration = Duration(seconds: 2);
  Timer t = Timer(const Duration(seconds: 5), () {
    print("5 seconds gone!");
  });
  t.tick;
  Timer.periodic(duration, timeOut);
  print("Started: ${getTime()}");
}

// we need to pass in a timer so we can cancel it!
void timeOut(Timer timer) {
  print(getTime());
  if (cnt > 8) timer.cancel();
  cnt++;
}

String getTime() {
  return DateTime.now().toString();
}
