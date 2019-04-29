import 'dart:core';

/**
 * IF, ELSE
 * SWITCH, CASE
 */
void main() {
  print(calculateSalaryAndBonus(3000));
  print(calculateSalaryAndBonus(5000));
  print(calculateSalaryAndBonus(10000));
  print(calculateSalaryAndBonus(20000));
  print(calculateSalaryAndBonus());
  print(getTitleBySalary(20000));
}

// IF and ELSE
// double calculateSalaryAndBonus(double baseSalary) {
//   double salary = baseSalary;
//   if (baseSalary <= 3000)
//     salary += baseSalary * .2;
//   else if (baseSalary > 3000 && baseSalary <= 5000)
//     salary += baseSalary * .3;
//   else if (baseSalary >= 10000 && baseSalary <= 15000)
//     salary += baseSalary * .4;
//   else
//     salary += baseSalary * .5;

//   return salary;
// }

// double calculateSalaryAndBonus(double baseSalary) {
//   if (baseSalary <= 3000) return baseSalary += baseSalary * .2;
//   if (baseSalary > 3000 && baseSalary <= 5000)
//     return baseSalary += baseSalary * .3;
//   if (baseSalary >= 10000 && baseSalary <= 15000)
//     return baseSalary += baseSalary * .4;
//   return baseSalary += baseSalary * .5;
// }

double calculateSalaryAndBonus([double baseSalary]) {
  return baseSalary ?? 1000;
}

// double calculateSalaryAndBonus([double baseSalary]) {
//   return baseSalary == null ? 1000 : baseSalary = baseSalary *= .2;
// }

// SWITCH and CASE Statements
String getTitleBySalary(int salary) {
  String title = '';
  switch (salary) {
    case 1:
    case 2:
    case 3:
      title = 'GGG';
      break;
    case 3000:
      return "Junior";
    case 5000:
      title = 'Semi Senior';
      break;
    default:
      return 'Senior';
  }

  return title;
}
