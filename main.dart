import 'package:flutter/material.dart';
import 'package:myapp/screens/employees/employees.dart';
import 'package:myapp/screens/employee_section/employee_text.dart';
import 'style.dart';

const EmployeesRoute = '/';
const EmployeeDetailRoute = '/employee_detail';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen;
      switch (settings.name) {
        case EmployeesRoute:
          screen = Employees();
          break;
        case EmployeeDetailRoute:
          screen = EmployeeText(arguments['id']);
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }

  ThemeData _theme() {
    return ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(headline6: AppBarTextStyle),
        ),
        textTheme: TextTheme(
          headline6: TitleTextStyle,
          bodyText2: Body1TextStyle,
        ));
  }
}
