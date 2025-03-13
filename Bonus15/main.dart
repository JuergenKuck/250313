import 'dart:io';

void main() {
  clearTerminal();
  List<String> a;

  a = ['Dies ', 'ist ', 'ein ', 'Test.'];
  print('join von $a = ${join(a)}');

  a = ['Ein ', 'neuer ', 'Text!'];
  print('join von $a = ${join(a)}');

  a = ['Es ', 'funktioniert, ', 'super!!!!'];
  print('join von $a = ${join(a)}');

  print('');
}

String join(List<String> list) {
  String result = '';
  for (String text in list) {
    result += text;
  }
  return result;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
