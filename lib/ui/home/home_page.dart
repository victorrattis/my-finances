
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_finances_app/data/data_repository.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CollectionReference pages = FirebaseFirestore.instance.collection('pages');
    
    // pages.get().then((event) {
    //   for (var doc in event.docs) {
    //     print(doc.id + " " + doc.get("pages"));
    //   }
    // });

    // FirebaseFirestore.instance.collection("pages")
    //     .doc("Jul-2022")
    //     .collection("values").get().then((event1) {
    //         for (var doc in event1.docs) {
    //           print(doc.id);
    //         }
    //     });

    return Scaffold(
      appBar: AppBar(title: const Text("My Finances")),
      body: StreamBuilder<QuerySnapshot>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final pages = snapshot.data!.docs;
            return ListView.builder(
              itemCount: pages.length,
              itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.transparent,
                        ),
                        backgroundColor: Colors.grey
                      ),
                      onPressed: () {  },
                      child: SizedBox(
                        height: 80,
                        child: Center(
                          child: Text(
                              pages[index].id,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 21
                              ),
                            ),
                        ),
                      )
                    ),
                  );
               }
            );
          }

          return const Center(child: Text("Loading..."));
        },
        stream: FirebaseFirestore.instance.collection('pages').snapshots(),
      )
    );
  }
}

// Padding(
//         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
//         child: ListView.builder(
//           itemCount: finances.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               height: 50,
//               child: Row(
//                 children: [
//                   Expanded(child: Text(finances[index].title)),
//                   Text(calculateValue(finances[index].expression, finances[index].value).toStringAsFixed(2))
//                 ],
//               ),
//             );
//           }
//         ),
//       )

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
