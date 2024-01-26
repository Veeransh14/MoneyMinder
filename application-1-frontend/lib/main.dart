// main.dart

// ignore_for_file: unused_import

// Import necessary packages and files
import 'package:finku_clone_slicing/Pages/Home%20Page/create_invoice.dart';
import 'package:finku_clone_slicing/Pages/Home%20Page/investment_page.dart';
import 'package:finku_clone_slicing/Pages/Home%20Page/make_a_budget.dart';
import 'package:finku_clone_slicing/Pages/Home%20Page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:finku_clone_slicing/Pages/Home%20Page/home_page.dart';
import 'package:finku_clone_slicing/Pages/Home%20Page/login_page.dart';
import 'package:finku_clone_slicing/Utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.budgetRoute: (context) => BudgetPage(),
        MyRoutes.invoiceRoute: (context) => InvoicePage(),
        MyRoutes.investmentRoute: (context) => InvestmentOptionsPage(),
        MyRoutes.splashRoute:(context) => SplashScreenPage(),
      },
    );
  }
}
