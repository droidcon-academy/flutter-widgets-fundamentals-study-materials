Future<String> getFutureValue() async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Droidcon Academy';
}