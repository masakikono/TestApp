import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Coffee Memo App'),
        ),
        body: MemoPage(),
      ),
    ),
  );
}

class MemoPage extends StatelessWidget {
  final items = List<String>.generate(
    100,
    (index) => 'サロンアプリの画面づくり$index',
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
                child: Image.network('https://pbs.twimg.com/profile_images/1466289249456562180/ODNltQc7_400x400.jpg'),
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
