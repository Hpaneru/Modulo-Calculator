import 'package:flutter/material.dart';

class Modulo extends StatefulWidget {
  @override
  _ModuloState createState() => _ModuloState();
}

class _ModuloState extends State<Modulo> {
  num dividend, divisor;
  String answer = '';
  bool pressed = false;
  TextEditingController dividendController = TextEditingController();
  TextEditingController divisorController = TextEditingController();

  FocusNode focus1 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('MODULO CALCULATOR'),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.all(10.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Text(answer, style: Theme.of(context).textTheme.display3),
                    SizedBox(height: 50.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      child: TextField(
                          controller: dividendController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 17),
                            hintText: 'Dividend',
                            prefixIcon: Icon(Icons.format_list_numbered),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(20),
                          ),
                          onChanged: (value) {
                            setState(() {
                              dividend = num.parse(value);
                            });
                          },
                          onSubmitted: (v) {
                            FocusScope.of(context).requestFocus(focus1);
                          }),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      child: TextField(
                        controller: divisorController,
                        focusNode: focus1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 17),
                          hintText: 'Divisor',
                          prefixIcon: Icon(Icons.format_list_numbered),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(20),
                        ),
                        onChanged: (value) {
                          setState(() {
                            divisor = num.parse(value);
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          RaisedButton(
                            child: Text('CALCULATE'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            onPressed: () {
                              answer = (dividend % divisor).toString();
                              setState(() {});
                            },
                          ),
                          RaisedButton(
                            child: Text('CLEAR'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0)),
                            onPressed: () {
                              answer = "";
                              dividendController.clear();
                              divisorController.clear();
                              setState(() {});
                            },
                          )
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
