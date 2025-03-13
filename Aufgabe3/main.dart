import 'dart:io';

void main() {
  clearTerminal();
  print(numberOfVowal("Hallo, wie geht es dir?"));
  print(numberOfVowal("Jürgen ging Öl kaufen.?"));
  print(numberOfVowal("Dies ist der dritte Worttest."));
  print('');
}

int numberOfVowal(String text) {
  String vokale = 'aeiouAEIOUäöüÄÖÜ';
  int count = 0;
  for (int i = 0; i < text.length; i++) {
    if (vokale.contains(text[i])) {
      count++;
    }
  }
  return count;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
