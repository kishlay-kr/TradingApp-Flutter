import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../models/stock.dart';
import 'package:provider/provider.dart';
import '../models/portfolio.dart';


class StockDetail extends StatelessWidget {
  final Stock stock;

  const StockDetail({Key? key, required this.stock}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(stock.company,
              style:
                  const TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 50,
          ),
          Text("Price: ${stock.price}",
              style:
                  const TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(onPressed: () {
            context.read<Portfolio>().addstock(stock);
            Navigator.of(context).pop();
          }, child: const Text("BUY")),
        ],
      ),
    );
  }
}
