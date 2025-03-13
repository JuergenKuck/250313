import 'dart:io';

void main() {
  clearTerminal();
  print(sumOfList([1, 2, 3, 4, 5]));
  print(sumOfList([-5, 0, 5]));
  print(sumOfList([4, 6, 8, 1, 2]));
  print('');
}

int sumOfList(List<int> list) {
  int sum = 0;
  for (int value in list) sum += value;
  return sum;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
