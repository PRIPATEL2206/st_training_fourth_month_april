import 'dart:io';

void main(List<String> args) {
  for (var i = 0; i <= 5; i++) {
    for (var j = 0; j < i; j++) {
      stdout.write(String.fromCharCode(64 + i));
    }
    print("");
  }
}
