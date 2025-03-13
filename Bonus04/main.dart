import 'dart:io';

void main() {
  clearTerminal();
  print(avarage([1, 2, 3, 4, 5]));
  print(avarage([-5, 0, 5]));
  print(avarage([4, 6, 8, 1, 2]));
  print('');
}

double avarage(List<int> list) {
  int sum = 0;
  for (int value in list) sum += value;
  return sum / list.length;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
