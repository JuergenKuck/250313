import 'dart:io';

void main() {
  clearTerminal();
  print(lengthOfTex('Hello, World!'));
  print(lengthOfTex('Dart is fun!'));
  print(lengthOfTex('I love programming!'));
  print('');
}

int lengthOfTex(String text) {
  return text.length;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
