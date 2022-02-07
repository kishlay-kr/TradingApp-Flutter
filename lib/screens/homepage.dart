import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tradeteq/screens/stock_detail_portfolio.dart';
import '../models/portfolio.dart';

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
                height: 100,
                width: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Center(child: Text('Total Invested', style: TextStyle(fontSize: 20),)),
                      Text('${context.watch<Portfolio>().getprice}', style: const TextStyle(fontSize: 30,))
                    ]),
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Colors.orangeAccent, Colors.pinkAccent]),
                    borderRadius: BorderRadius.circular(10))),
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Portfolio',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              )),
          Expanded(
            child: ListView.builder(
                itemCount: context.watch<Portfolio>().list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(context.watch<Portfolio>().list[index].company),
                    leading: CircleAvatar(
                      child: Text(
                          context.watch<Portfolio>().list[index].company[0]),
                    ),
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return StockDetailP(
                                stock: context.watch<Portfolio>().list[index]);
                          });
                    },
                  );
                }),
          ),
          // const Align(
          //   alignment: Alignment.centerLeft,
          //   child: Text(
          //     'History',
          //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
          //   ),
          // ),
          // Expanded(
          //     child: Container(
          //   child: ListView(
          //     children: [
          //       ListTile(
          //         leading: CircleAvatar(
          //           backgroundColor: Colors.brown.shade100,
          //           child: Text('A'),
          //         ),
          //         title: const Text('data'),
          //       ),
          //     ],
          //   ),
          // ))
        ],
      ),
    );
  }
}
