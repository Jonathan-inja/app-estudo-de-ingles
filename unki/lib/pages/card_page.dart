import 'package:flutter/material.dart';
import 'card_res_page.dart';

class CardPage extends StatefulWidget {
  @override
  _cardPageState createState() => _cardPageState();
}

class _cardPageState extends State<CardPage> {
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
      bottomNavigationBar: Text("Clique aqui para ver a resposta"),
    );
  }

  buildBody() {
    return ListView(
      children: [
        buildContainerCard(),
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
          SizedBox(height: 10),
          buildElevatedButton(),
        ],
      ),
    );
  }

  buildElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 22),
        primary: Color(0xff54759E),
      ),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => new CardResPage()));
      },
      child: Text(
        'Clique para ver a resposta',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
