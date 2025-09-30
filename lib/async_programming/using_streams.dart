/*
streams are async operations that are not available all at once.
think of video streams where data will keep coming in chunks
*/

Future<int> sumStream(Stream<int> stream) async {
  // sum all the data inside the stream of integers
  var sum = 0;
  await for (int num in stream) {
    sum += num;
  }
  return sum;
}

// same function but this time, we go functional and use reduce method
Future<int> sumStreamWithReduce(Stream<int> stream) async {
  // stream.reduce returns Future<int> so we can return it off rip!
  return stream.reduce((prev, elem) => prev + elem);
}

// generate a stream using yield
// the async* means it's a stream not a future
Stream<int> countStream(int n) async* {
  for (int i = n; i >= 0; i--) {
    yield i;
  }
}

Future<void> main() async {
  // simulate a stream
  var stream = Stream.fromIterable([1, 2, 3, 4, 5]);
  var stream2 = countStream(5);
  var manualStreamSum = await sumStream(stream2);
  var sum = await sumStream(stream);
  var sum2 = await sumStreamWithReduce(stream);
  print("manual stream sum is $manualStreamSum");
  print("sum from sum is: $sum");
  print("sum from sum2 is: $sum2");
}
