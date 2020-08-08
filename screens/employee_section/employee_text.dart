import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/screens/employee_section/image_banner.dart';
import 'package:myapp/screens/employee_section/employee_section.dart';
import '../../models/employee.dart';

class EmployeeText extends StatelessWidget {
  final int _employeeID;

  EmployeeText(this._employeeID);

  @override
  Widget build(BuildContext context) {
    final employee = Employee.fetchByID(_employeeID);

    return Scaffold(
      appBar: AppBar(
        title: Text(employee.name),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ImageBanner(employee.imagePath),
        ]..addAll(textSections(employee)),
      ),
    );
  }

  List<Widget> textSections(Employee employee) {
    return employee.facts
        .map((fact) => EmployeeSection(fact.title, fact.text))
        .toList();
  }
}
