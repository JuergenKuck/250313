import 'dart:io';

void main() {
  clearTerminal();
  print(getEven(5));
  print(getEven(56));
  print(getEven(3));
  print('');
}

bool getEven(int a) {
  return a.isEven;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
