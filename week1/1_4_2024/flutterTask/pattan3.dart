import 'dart:io';

void main(List<String> args) {
  int count = 0;
  for (var i = 0; i <= 5; i++) {
    for (var j = 0; j < i; j++) {
      stdout.write(String.fromCharCode(65 + count));
      count++;
    }
    print("");
  }
}
