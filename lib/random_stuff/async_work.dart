Future<String> greeting() async {
  // Return the Future directly
  return await Future.delayed(
    const Duration(seconds: 5),
    () => "done with the computation",
  );
}

void main() async {
  String msg = await greeting();
  print(msg);
}
