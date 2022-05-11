import 'dart:io';
class Time {
  //properties
  dynamic timeList;
  //constructor
  Time() {
    timeList = List.generate(22, (_) => 0);
  }

  //setter
  void setNum(dynamic timeList) {
    this.timeList = timeList;
  }

  //getter
  String getNum() {
    return timeList;
  }

  void arriveEarly(var i){
    timeList[i] = 540;
  }


  void arriveLate(var i){
    var hours,minutes,totalMinutes,timeIn,timeFormat;
    var newHourOut = 5, newMinitOut = 00;

    stdout.write('Time In : ');
    timeIn = stdin.readLineSync();
    stdout.write('Time Format (1 = am / 2 = pm): ');
    timeFormat = stdin.readLineSync();
    var timeFormatIn = int.parse(timeFormat);
    dynamic newHourIn = int.tryParse(timeIn.split('.')[0]);
    dynamic newMinitIn = int.tryParse(timeIn.split('.')[1]);

    // conver to 24 hours if arrive before 1 pm
    if(timeFormatIn == 1 || newHourIn == 12){
          newHourOut += 12;
    }
    else{
      newHourOut  += 0 ;
      newHourIn += 0;
    }

    hours = newHourOut - newHourIn;
    minutes = newMinitOut - newMinitIn;

    if (minutes < 0) {
      newMinitOut += 60;
      minutes = newMinitOut - newMinitIn;
      hours -= 1;
    }

    //in case ot
    /*if (hours < 0 && minutes > 0){
      hours = 24 + hours;
    }
    else if(hours < 0 && minutes < 0){
      hours = 24 + hours;
      newMinitOut += 60;
      minutes = newMinitOut - newMinitIn;
      hours -= 1;
    }*/
            
    hours *= 60;
    totalMinutes = hours + minutes;
    timeList[i] = totalMinutes;
  }

  void calc(){
    dynamic sum=0,nett=0,totalTime=0;

    for (var i = 0; i < 22; i++) {
      totalTime += timeList[i];
    }
    sum = totalTime*0.1;
    print('Gross Salary : RM $sum');
    nett = sum - sum*0.11;
    double num3 = double.parse((nett).toStringAsFixed(2));
    print('Nett Salary : RM $num3');
  }

  void display() {
    print(timeList);
  }
}