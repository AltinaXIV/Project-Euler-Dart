void main() {
  int day = 1;
  int weekday = 2;
  int month = 1;
  int year = 1900;
  int sundays = 0;
  while(year < 2001) {
    // if its a sunday and the first of the month, add 1 to sundays
    if(weekday == 1 && day == 1 && year != 1900) {
      sundays++;
    }

    // Let a day pass
    day++;
    weekday++;
    if(weekday == 8) {
      weekday = 1;
    }

    // thirty days September, April, June, November
    if((month == 9 || month == 4 || month == 6 || month == 11) && day == 31) {
      month++;
      day = 1;
    } else if (month == 2) {
      if(year % 100 == 0) {
        if(year % 400 == 0) {
          if(day == 30) {
            day = 1;
            month++;
          }
        } else if(day == 29) {
          day = 1;
          month++;
        }
      } else if(year % 4 == 0) {
        if (day == 30) {
          day = 1;
          month++;
        }
      } else if(day == 29) {
        day = 1;
        month++;
      }
    } else if(day == 32) {
      day = 1;
      month++;
      if(month == 13) {
        year++;
        month = 1;
      }
    }
  }
  print(sundays);
}