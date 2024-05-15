import 'dart:io';

void main(List<String> args) {
  int n = 5;
  for (var i = 0; i < n; i++) {
    for (var j = 0; j < n - i; j++) {
      stdout.write(" ");
    }
    for (var j = 0; j < i * 2 + 1; j++) {
      stdout.write(j + 1);
    }
    print("");
  }
}
