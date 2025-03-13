import 'dart:io';

void main() {
  clearTerminal();
  int a;

  a = 1009; //Primzahl
  print('Prime von $a = ${isPrime(a)}');

  a = 990; //keine Primzahl
  print('Prime von $a = ${isPrime(a)}');

  a = 2003; //Primzahl
  print('Prime von $a = ${isPrime(a)}');

  a = 5003; //Primzahl
  print('Prime von $a = ${isPrime(a)}');

  print('');
}

bool isPrime(int number) {
  if (number < 2) return false; // 0 und 1 sind keine Primzahlen
  if (number == 2 || number == 3) return true; // 2 und 3 sind Primzahlen
  if (number % 2 == 0 || number % 3 == 0)
    return false; // Gerade Zahlen & Vielfache von 3 ausschließen

  for (int i = 5; i * i <= number; i += 6) {
    if (number % i == 0 || number % (i + 2) == 0) {
      return false; // Teilbar durch i oder (i + 2) → keine Primzahl
    }
  }

  return true;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
