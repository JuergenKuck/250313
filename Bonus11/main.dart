import 'dart:io';

void main() {
  clearTerminal();
  int a;
  a = 2;
  print('${changeSign(a)}');

  a = 1;
  print('${changeSign(a)}');

  a = -3;
  print('${changeSign(a)}');

  print('');
}

int changeSign(int a) {
  return -a;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
