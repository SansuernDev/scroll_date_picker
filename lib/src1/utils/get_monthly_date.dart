// ignore_for_file: unused_local_variable

int getMonthlyDate({required int year, required int month, required String locale}) {
  int day = 0;
  int customYear = year - 543;
  switch (month) {
    case 1:
      day = 31;
      break;
    case 2:
     if (locale == "en") {
        day = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 ? 29 : 28;
      } else {
        day = (customYear % 4 == 0 && customYear % 100 != 0) || customYear % 400 == 0 ? 29 : 28;
      }
      break;
    case 3:
      day = 31;
      break;
    case 4:
      day = 30;
      break;
    case 5:
      day = 31;
      break;
    case 6:
      day = 30;
      break;
    case 7:
      day = 31;
      break;
    case 8:
      day = 31;
      break;
    case 9:
      day = 30;
      break;
    case 10:
      day = 31;
      break;
    case 11:
      day = 30;
      break;
    case 12:
      day = 31;
      break;

    default:
      day = 30;
      break;
  }
  return day;
}
