import 'dart:io';

void main() {
  clearTerminal();
  print(NumberOfALetterInText('Dies ist ein Text.', 'T'));
  print(NumberOfALetterInText('Dies ist ein Text.', 'e'));
  print(NumberOfALetterInText('Dies ist ein Text.', 'n'));
  print('');
}

int NumberOfALetterInText(String text, String letter) {
  int sum = 0;
  for (int i = 0; i < text.length; i++) if (text[i] == letter) sum++;
  return sum;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
