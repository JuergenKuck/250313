import 'dart:io';

void main() {
  clearTerminal();
  List<String> a;
  a = ['Peter', 'Ingeborg', 'Liesel'];
  print('$a: ${numberOfChar(a)}');
  a = ['Auto', 'Flugzeug', 'Schiff'];
  print('$a: ${numberOfChar(a)}');
  a = ['Blume', 'Baum', 'Farn'];
  print('$a: ${numberOfChar(a)}');

  print('');
}

Map<String, int> numberOfChar(List<String> list) {
  Map<String, int> result = {};
  for (String text in list) {
    result[text] = text.length;
  }
  return result;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
