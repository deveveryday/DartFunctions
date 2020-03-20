class Employee{
  String name;
  double rawSalary;
  double cashSalary;
  num kids;
  num hoursOfWork;
  num perHourSalary;

    Employee(this.name, this.kids, this.hoursOfWork, this.perHourSalary)
    {
      this.rawSalary = 0;
      this.rawSalary = (this.hoursOfWork * this.perHourSalary).toDouble();
      this.rawSalary += (50 * this.kids);
    }

    setCashSalary(double value){
        this.cashSalary = value;
    }
}