
import 'package:flutter/material.dart';
import 'package:my_finances_app/data/data_repository.dart';

class ListFinancesPage extends StatelessWidget {
  const ListFinancesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Finances"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
    
            ExpansionTile(
              collapsedBackgroundColor: Colors.red,
              // backgroundColor: Colors.red,
              controlAffinity: ListTileControlAffinity.trailing,
              title: Container(
                // color: Colors.grey,
                // height: 80,
                child: const Center(
                  child: Text("Nubank", style: TextStyle(color: Colors.black),),
                ),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: registers.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return ItemView(
                        data: "04 JUL.",
                        text: registers[index].text,
                        price: "R\$ ${registers[index].price.toStringAsFixed(2)}",
                      );
                    }
                  ),
                )
              ],
            ),

            

            
      
          ],
        ),
      )
    );
  }
}

class ItemView extends StatelessWidget {
  final String text;
  final String data;
  final String price;

  const ItemView({
    super.key,
    required this.text,
    required this.data,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children:  [
          Text(data),

          const SizedBox(width: 24),
          Expanded(child: Text(text)),

          const SizedBox(width: 24),
          Text(price)
        ],
      ),
    );
  }
}