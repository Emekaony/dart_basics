// when you use array, u don't have to use return
Future<String> fetchUserOrder(String item) {
  return Future.delayed(Duration(seconds: 5), () {
    if (item == "banana") {
      // simulate running out of bananas
      throw Exception("We are out of $item");
    } else {
      String message = "We are able to make ur order with $item";
      return message;
    }
  });
}

Future<void> main() async {
  print("starting");
  // try {
  //   final message1 = await fetchUserOrder("banana");
  //   final message2 = await fetchUserOrder("milk");
  //   print(message1);
  //   print(message2);
  // } catch (error) {
  //   print(error);
  // }
  final msg = await fetchUserOrder('milk');
  print(msg);
  print("done");
}
