import 'package:flutter/material.dart';

class CardResPage extends StatefulWidget {
  @override
  _cardResPageState createState() => _cardResPageState();
}

class _cardResPageState extends State<CardResPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('1/5'),
        centerTitle: true,
        backgroundColor: Color(0xff54759E),
      ),
      body: buildBody(),
      backgroundColor: Color(0xff202125),
    );
  }
}

buildBody() {
  return ListView(
    children: [
      buildContainerCard(),
      buildContainerCardRes(),
    ],
  );
}

Container buildContainerCard() {
  return Container(
    margin: EdgeInsets.all(16),
    padding: EdgeInsets.all(16),
    alignment: Alignment.center,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Don't grow up. It's a trap!",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Container buildContainerCardRes() {
  return Container(
    margin: EdgeInsets.all(16),
    padding: EdgeInsets.all(16),
    alignment: Alignment.center,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Não cresça. É uma armadilha!",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
