import 'package:flutter/material.dart';
import 'stock_detail.dart';
import '../models/stock.dart';

class StockList extends StatelessWidget {
  const StockList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemCount: stocks.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(stocks[index].symbol,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              leading: CircleAvatar(child: Text(stocks[index].symbol[0])),
              onTap: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25))),
                    context: context,
                    builder: (BuildContext context) {
                      return StockDetail(stock: stocks[index]);
                    });
              },
            );
          },
        ));
  }
}

class searchBar extends SearchDelegate<String> {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.close))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, "");
      },
      icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow, progress: transitionAnimation),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? []
        : stocks
            .where((name) =>
                name.symbol.toLowerCase().startsWith(query.toLowerCase()))
            .toList();
    return ListView.builder(
        itemCount: suggestionList.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(suggestionList[index].symbol),
              leading: CircleAvatar(
                child: Text(suggestionList[index].symbol[0]),
              ),
              onTap: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(25))),
                    context: context,
                    builder: (BuildContext context) {
                      return StockDetail(stock: suggestionList[index]);
                    });
              });
        });
  }
}
