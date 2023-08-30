String createPhoneNumber(List numbers) {
  // Your code goes here
  return '(${numbers.sublist(0, 3).join()}) ${numbers.sublist(3, 6).join()}-${numbers.sublist(6).join()}';
}
