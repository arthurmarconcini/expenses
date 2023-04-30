import 'package:flutter/material.dart';

void main(List<String> args) {
  return runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Despesas Pessoais")),
        body: const Center(
          child: Text("Versão inicial"),
        ));
  }
}
