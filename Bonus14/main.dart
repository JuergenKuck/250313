import 'dart:io';

void main() {
  clearTerminal();
  double celsius;
  double fahrenheit;

  celsius = 10;

  fahrenheit = changeTemperatureScala(celsius, true);
  print('Celsius2Fahrenheit von $celsius = $fahrenheit');

  celsius = changeTemperatureScala(fahrenheit, false);
  print('Fahrenheit2Celsius von $fahrenheit = $celsius');

  celsius = 42;
  fahrenheit = changeTemperatureScala(celsius, true);
  print('Celsius2Fahrenheit von $celsius = $fahrenheit');

  celsius = changeTemperatureScala(fahrenheit, false);
  print('Fahrenheit2Celsius von $fahrenheit = $celsius');

  print('');
}

double changeTemperatureScala(double value, bool isCelsius) {
  return isCelsius ? value * 1.8 + 32 : (value - 32) * 5 / 9;
}

void clearTerminal() {
  // ANSI-Escape-Sequenz zum Löschen des Bildschirms und Zurücksetzen des Cursors
  stdout.write('\x1B[2J\x1B[0;0H');
}
