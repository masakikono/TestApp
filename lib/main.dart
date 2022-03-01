import 'package:flutter/material.dart';

void main() {

  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('Coffee Memo App'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                // Pressed Action
              },
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Pressed Action
              },
            ),
          ],
        ),
        body: MemoPage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
          },
          child: Icon(Icons.add),
        ),
      ),
    ),
  );
}

class MemoPage extends StatelessWidget {
  final items = List<String>.generate(
    1,
    (index) => '今日のドリップコーヒー$index',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 200,
                child: Image.network('https://washinomiya.ario.jp/app/19/img/tenant/1900000018/E7E97635-2B2D-4A19-9644-ED69583D75FE.jpeg'),
              ),
              Text(
                '$item',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
