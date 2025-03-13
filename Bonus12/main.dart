import 'dart:io';

void main() {
  clearTerminal();
  List<int> a;
  a = [3, 5, 8, 1, 10];
  print('$a: ${minOfList(a)}');

  a = [-5, 10, 8, -10, 10];
  print('$a: ${minOfList(a)}');

  a = [6, 5, 4, 3, 2, 1];
  print('$a: ${minOfList(a)}');

  print('');
}

int minOfList(List<int> list) {
  int min = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i] < min) min = list[i];
  }

  return min;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
