import 'screens/homepage.dart';
import 'screens/browse.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/portfolio.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Portfolio(),)],
      child: const MaterialApp(
        title: 'Trading App',
        home: SafeArea(
          child: MyScaffold(),
        ),
      ),));
}

class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int currentIndex = 0;
  final titleList = ['Home', 'Browse Stocks'];
  String title = 'Home';
  final screens = const [
    homepage(),
    StockList(),
  ];
  var action = <Widget>[const Center(child: SizedBox(height: 10, width: 10))];

  @override
  Widget build(BuildContext context) {
    var actionList = [
      [
        const SizedBox(
          height: 10,
          width: 10,
        )
      ],
      [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: searchBar());
          },
        ),
        const SizedBox(
          height: 10,
          width: 10,
        )
      ]
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: action,
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            title = titleList[index];
            currentIndex = index;
            action = actionList[index];
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Browse',
              backgroundColor: Colors.blue),
        ],
      ),
    );
  }
}
