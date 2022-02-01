import 'package:flutter/material.dart';
import '../models/stock.dart';

class StockList extends StatelessWidget {
  const StockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: stocks.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(stocks[index].symbol),
            leading: CircleAvatar(child:Text(stocks[index].symbol[0])),
          );
        },
      )
    );
  }
}


class searchBar extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    throw UnimplementedError();
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    throw UnimplementedError();
  }
}
