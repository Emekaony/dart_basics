Stream<String> fizzBuzzStream() async* {
  for (int i = 1; i <= 15; i++) {
    // wait one second to make things fun!
    await Future.delayed(Duration(seconds: 3));
    if (i % 15 == 0) {
      yield "fizzBuzz";
    } else if (i % 3 == 0) {
      yield "fizz";
    } else if (i % 5 == 0) {
      yield "buzz";
    } else {
      yield "$i";
    }
  }
}

Future<void> main() async {
  var fizzStream = fizzBuzzStream();
  // don't forget that streams are iterables and u can use forEach, reduce, map e.t.c on them!
  fizzStream.forEach(print);
}
