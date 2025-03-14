import 'dart:io';
import 'dart:math';

void main() {
  clearTerminal();
  int a;

  a = 12345;
  print('reverseNumber $a => ${reverseNumber(a)}');

  a = -12345;
  print('reverseNumber $a => ${reverseNumber(a)}');

  a = 123456789123456789;
  print('reverseNumber $a => ${reverseNumber(a)}');

  print('');
}

int reverseNumber(int number) {
  int num = number.abs();
  int result = 0;
  int floor = (log(num) / log(10)).floor();
  for (int i = floor; i >= 0; i--) {
    int re = pow(10, i).toInt();
    int v = num ~/ re;
    num -= v * re;
    result += v * pow(10, (floor - i)).toInt();
  }
  return number.sign * result;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
