import 'dart:io';

import 'employee.dart';

main(){
  List<Employee> listEmployees = [
    new Employee("Ana", 1, 8, 50),
    new Employee("Joana", 1, 8, 20),
    new Employee("Chris", 1, 1, 3000)
  ]; 
  // for(var employee in listEmployees){
  //   employee.setCashSalary(calculateIR(employee.rawSalary));
  //   employee.setCashSalary(calculateINSS(employee.rawSalary));

  //   stdout.write('${employee.name}: R\$${employee.cashSalary}\n');    
  // }

  var employeesLength = listEmployees.length;
  for(var listCount = 0; listCount < employeesLength; listCount++){
    var employee = listEmployees[listCount];
    employee.setCashSalary(calculateIR(employee.rawSalary));
    employee.setCashSalary(calculateINSS(employee.rawSalary));

    stdout.write('💰  ${employee.name}: rawSalary R\$${employee.rawSalary} | cash R\$${employee.cashSalary} \n');
  }
}

calculateIR(double salary){
  salary = salary > 1000 ? salary - (salary * 0.08) : salary; 
  //salary = salary - (salary * 0.08);
  return salary;
}

calculateINSS(double salary){
  salary = salary - (salary * 0.05);
  return salary;
}