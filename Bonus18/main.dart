import 'dart:io';
import 'dart:math';

void main() {
  clearTerminal();

  int seconds;
  seconds = 120; // => 00:02:00
  print('secondsToTime $seconds => ${secondsToTime(seconds)}');

  seconds = 3600; // => 01:00:00
  print('secondsToTime $seconds => ${secondsToTime(seconds)}');

  seconds = 3728; // => 01:02:08
  print('secondsToTime $seconds => ${secondsToTime(seconds)}');

  print('');
}

String secondsToTime(int ss) {
  int hh = ss ~/ 3600;
  ss = ss - hh * 3600;
  int mm = ss ~/ 60;
  ss = ss - mm * 60;
  return '${padLeft(hh, 2)}:${padLeft(mm, 2)}:${padLeft(ss, 2)}';
}

String padLeft(int hh, int pl) {
  return hh.toString().padLeft(pl, '0');
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
