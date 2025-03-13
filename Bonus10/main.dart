import 'dart:io';

void main() {
  clearTerminal();
  int a;
  int b;
  int c;

  a = 2;
  b = 4;
  c = 5; // => 40
  print('${product(product(a, b), c)}');

  a = 1;
  b = 10;
  c = 5; // => 50
  print('${product(product(a, b), c)}');

  a = -3;
  b = -4;
  c = 5; // => 60
  print('${product(product(a, b), c)}');

  print('');
}

int product(int a, int b) {
  return a * b;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
