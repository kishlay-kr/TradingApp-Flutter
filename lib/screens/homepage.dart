import 'package:flutter/material.dart';

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
                    children: const [
                      Center(child: Text('Hello')),
                      Text('  hello')
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
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown.shade100,
                    child: Text('A'),
                  ),
                  title: const Text('data'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('2.2%'),
                      SizedBox(
                          height: 10,
                          width: 20,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.red),
                          )),
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown.shade100,
                    child: const Text('A'),
                  ),
                  title: const Text('data'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('2.2%'),
                      SizedBox(
                          height: 10,
                          width: 20,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.red),
                          )),
                    ],
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown.shade100,
                    child: const Text('A'),
                  ),
                  title: const Text('data'),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('2.2%'),
                      SizedBox(
                          height: 10,
                          width: 20,
                          child: DecoratedBox(
                            decoration: BoxDecoration(color: Colors.red),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'History',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
          ),
          Expanded(
              child: Container(
            child: ListView(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown.shade100,
                    child: Text('A'),
                  ),
                  title: const Text('data'),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
