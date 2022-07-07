
import 'package:flutter/material.dart';
import 'package:my_finances_app/data/data_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("App Bar Title")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: ListView.builder(
          itemCount: finances.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              child: Row(
                children: [
                  Expanded(child: Text(finances[index].title)),
                  Text(calculateValue(finances[index].expression, finances[index].value).toStringAsFixed(2))
                ],
              ),
            );
          }
        ),
      )
    );
  }
}

class FinanceDataValue {
  final String id;
  final String title;
  final String expression;
  final double value;
  final String status;

  FinanceDataValue({
    this.id = "",
    required this.title,
    this.expression = "",
    this.value = 0,
    this.status = ""
  });
}

List<FinanceDataValue> finances = [
  FinanceDataValue(
    id: "gastos_santander",
    title: "Cartão Free - Santander",
    expression: "santander"
  ),
  FinanceDataValue(
    id: "gastos_nubank",
    title: "Cartão Nubank",
    expression: "nubank"
  ),
  FinanceDataValue(
    id: "gastos_btg",
    title: "Cartão BTG+",
    expression: "btg"
  ),
  FinanceDataValue(
    id: "gastos_fies",
    title: "FIES",
    value: 72.80
  ),
];

double calculateValue(String expression, double value) { 
  if (expression == "") return value;
  return registers.fold<double>(0.0, (sum, element) => element.labels.contains(expression) ? (sum + element.price) : sum);
}
