/*
Things I have learned:
1. await makes asynchronous work follow a certain order!
2. use await when u want things to be organized
3. whenever a function is async, the return type must be a Future<something>
4. if it returns nothing, then Future<void>
*/

Future<void> countdownWithDelay(int n) async {
  for (int i = n; i >= 0; i--) {
    // putting this await here makes sure we have the delay and print
    // the value before we move on to the next asynchronous execution
    await Future.delayed(Duration(seconds: 1), () => print(i));
  }
}

Future<void> main() async {
  print("Start");
  int target = 5;
  await countdownWithDelay(target);
  // again, without this await keyword, we would have 'done' print before
  // the async task is finished!
  print("done");
}
