import 'dart:io';

enum NumberType {
  zero,
  positive,
  negative,
}

void main() {
  clearTerminal();
  String a;
  a = 'Text 1';
  print('$a: ${textToList(a)}');
  a = 'Zweiter Text';
  print('$a: ${textToList(a)}');
  a = 'Dies ist der 3. Text';
  print('$a: ${textToList(a)}');
  print('');
}

List<String> textToList(String text) {
  List<String> list = [];
  for (int i = 0; i < text.length; i++) {
    list.add(text[i]);
  }
  return list;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
