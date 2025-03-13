import 'dart:io';

void main() {
  clearTerminal();
  print(getMax(10.0, 23.0));
  print(getMax(4, 3));
  print(getMax(-10, 12));
  print('');
}

double getMax(double a, double b) {
  return a > b ? a : b;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
