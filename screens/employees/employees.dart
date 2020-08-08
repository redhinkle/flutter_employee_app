import 'package:flutter/material.dart';
import '../../main.dart';
import '../../models/employee.dart';

class Employees extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final employees = Employee.fetchAll();

    return Scaffold(
      appBar: AppBar(
        title: Text('Employees'),
      ),
      body: ListView(
        children: employees
            .map((employee) => GestureDetector(
                  child: Text(employee.name),
                  onTap: () => _onEmployeeTap(context, employee.id),
                ))
            .toList(),
      ),
    );
  }

  _onEmployeeTap(BuildContext context, int employeeID) {
    Navigator.pushNamed(context, EmployeeDetailRoute,
        arguments: {'id': employeeID});
  }
}
