
import 'dart:io';

import 'calc.dart';

void main() {
  var yesno;

  var time = new Time();

  for (var j = 0; j < 22; j++) {
    stdout.write('Do you arrive on time ? (y/n)');
    yesno = stdin.readLineSync();
    for (dynamic i = j; i <= j; i++) {
      if (yesno == 'y') {
        time.arriveEarly(i);
      }
      else{
        time.arriveLate(i);
      }
    }
    print('\n');
    time.display();
    time.calc();
    print('\n');
    
  }
}