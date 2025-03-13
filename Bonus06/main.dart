import 'dart:io';

void main() {
  clearTerminal();
  print(containsALetterInText('Dies ist ein Text.', 'T'));
  print(containsALetterInText('Dies ist ein Text.', 'v'));
  print(containsALetterInText('Dies ist ein Text.', 'n'));
  print('');
}

bool containsALetterInText(String text, String letter) {
  return text.contains(letter);
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
