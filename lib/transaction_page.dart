import 'package:flutter/material.dart';

class ListCardScreen extends StatefulWidget {
  const ListCardScreen({Key? key}) : super(key: key);
  @override
  _ListCardsScreenState createState() => _ListCardsScreenState();
}

class _ListCardsScreenState extends State<ListCardScreen> {
  @override
  Widget build(BuildContext context) {
    Card(
      child: Column(
        children: [
          Image.network(src),
          Text(title),
        ],
      ),
    );
    return Scaffold();
  }

  Widget card(String image, String title, BuildContext context) {
    return Card(
      color: Colors.yellow[50],
      elevation: 8,
      margin: EdgeInsets.all(4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Image.network(
              image,
              height: MediaQuery.of(context).size.width * (3 / 4),
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  String src = 'https://cdn.pixaby.com/photo/....';
  String title = 'Cards 01';
}

// appBar : appBar(
//   Title : Text('Transaction List'),
// ),
// body : ListView(
//   children : [],
// ),

