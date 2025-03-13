import 'dart:io';

enum NumberType {
  zero,
  positive,
  negative,
}

void main() {
  clearTerminal();
  int a;
  a = -10;
  print('$a ist ${numberType(a).toString()}');
  a = 0;
  print('$a ist ${numberType(a).toString()}');
  a = 10;
  print('$a ist ${numberType(a).toString()}');
  print('');
}

NumberType numberType(int a) {
  NumberType result = NumberType.zero;
  if (a < 0)
    result = NumberType.negative;
  else if (a > 0) result = NumberType.positive;
  return result;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
