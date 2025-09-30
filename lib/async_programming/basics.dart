// when you use array, u don't have to use return
Future<String> fetchUserOrder(String item) {
  return Future.delayed(Duration(seconds: 2), () {
    if (item == "banana") {
      // simulate running out of bananas
      throw Exception("We are out of $item");
    } else {
      String message = "We are able to make ur order with $item";
      return message;
    }
  });
}

void main() {
  print("program started");
  fetchUserOrder("banana")
      .then((result) => print(result))
      .catchError((err) => print(err))
      .whenComplete(() => print("order done processing!"));
}
