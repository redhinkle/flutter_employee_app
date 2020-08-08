import 'employee_fact.dart';

class Employee {
  final int id;
  String name;
  String imagePath;
  final List<EmployeeFact> facts;

  Employee(this.id, this.name, this.imagePath, this.facts);

  static List<Employee> fetchAll() {
    return [
      Employee(1, 'Andre', 'assets/images/andre.jpg', [
        EmployeeFact('Title:', 'Senior Applications Developer'),
        EmployeeFact('About:',
            'Andre has been working at the company for 3 year. His is known for his practical jokes and shenannigans in the office.')
      ]),
      Employee(2, 'Beck', 'assets/images/beck.jpg', [
        EmployeeFact('Title:', 'UX/UI Designer'),
        EmployeeFact('About:',
            'Beck left her career as a journalist to persue a career in developing user interfaces. She is well-respected for her knowledge and designs when it comes to usability.')
      ]),
      Employee(3, 'Ish', 'assets/images/ish.jpg', [
        EmployeeFact('Title:', 'Company CEO'),
        EmployeeFact('About:',
            'Ish founded the company from a small office several years ago. Since then he has been able to expand his business on a global level.')
      ]),
      Employee(4, 'Javier', 'assets/images/javier.jpg', [
        EmployeeFact('Title:', 'QA Tester'),
        EmployeeFact('About:',
            'Javier got the job from a temporary internship than so far no one knows has expired. He regularly teams up with Andre to play pranks on their co-workers.')
      ]),
      Employee(5, 'Niko', 'assets/images/niko.jpg', [
        EmployeeFact('Title:', 'B2B Planner'),
        EmployeeFact(
            'About:', 'Nobody really knows what he does. Suseptible to pranks.')
      ]),
    ];
  }

  static Employee fetchByID(int employeeID) {
    //fetch all Employees, itereate them, and when we find the Employee with the id we want return immediately
    List<Employee> employees = Employee.fetchAll();
    for (var i = 0; i < employees.length; i++) {
      if (employees[i].id == employeeID) {
        return employees[i];
      }
    }
    return null;
  }
}
