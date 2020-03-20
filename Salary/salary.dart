import 'dart:io';
import 'employee.dart';

main(){
  List<Employee> listEmployees = [
    new Employee("Ana", 1, 180, 50),
    new Employee("Joana", 1, 160, 20),
    new Employee("Chris", 1, 160, 3000)
  ]; 

   for(var employee in listEmployees){
     employee.setCashSalary(calculateIR(employee.rawSalary));
     employee.setCashSalary(calculateINSS(employee.rawSalary));

     stdout.write(' ${employee.name}: rawSalary: R\$${employee.rawSalary} |  R\$${employee.cashSalary}\n');    
   }
}

calculateIR(double salary) => salary - (salary * 0.08);

calculateINSS(double salary) => salary - (salary * 0.05);