import 'dart:io';

void main() {
  clearTerminal();
  print(sum(1, 2, 3));
  print(sum(10, 20, 30));
  print(sum(100, 200, 300));
  print('');
}

int sum(int a, int b, int c) {
  return a + b + c;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
