import 'dart:io';

void main() {
  clearTerminal();
  print(numberOfVowal(
      "Hallo, wie geht es dir?")); //Ausgabe: 7 (a, o, e, e, e, i, i)
  print(numberOfVowal(
      "Jürgen ging Öl kaufen.?")); //Ausgabe: 7 (ü, e, i, Ö, a, u, a)
  print(numberOfVowal(
      "Dies ist der dritte Worttest.")); // Ausgabe: 8
       (i, e, i, e, i, e, o, e)
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

String getVokale(String text) {
  final vokale = RegExp(r'[aeiouAEIOUäöüÄÖÜ]');
  return text.split('').where((char) => vokale.hasMatch(char)).join();
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
