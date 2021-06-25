import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/constants/strings.dart';
import 'package:delivery_app/views/ClientViews/ShoppingCartPage.dart';
import 'package:delivery_app/views/ClientViews/Widgets/StatusScreen.dart';
import 'package:flutter/material.dart';

class Checkme extends StatefulWidget {
  const Checkme({ Key? key }) : super(key: key);

  @override
  _CheckmeState createState() => _CheckmeState();
}

class _CheckmeState extends State<Checkme> {
  @override
   List<CheckBoxListTileModel> checkBoxListTileModel =
      CheckBoxListTileModel.getUsers();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colour.white,
      appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          onPressed: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder:(context) =>ShoppingCartPage(),
            ),
          );
        },
       ),
          title: Text(
            'Payment',
            style: TextStyle(
              fontFamily: StringInner.fonts["main"],
              fontWeight: FontWeight.bold,
              fontSize: 25.0,
              color: Colour.white,
              fontStyle: FontStyle.italic,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colour.orange,
        ),
       body:Column(
         children: <Widget>[
           Padding(
                  padding: EdgeInsets.fromLTRB(0,40,0,0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[                        
                Text(
                  'Choose your payment method',
                  style: TextStyle(
                  color: Colour.gray,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w600,
                ),
               ),                      
              ],
            ),
          ),
           SizedBox(height: 40.0),
              Container(
                height: 400,
             child:ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              color: Colour.white,
              child: new Container(
                padding: new EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Theme(
                          data: Theme.of(context).copyWith(
                         disabledColor: Colors.transparent,
                         unselectedWidgetColor: Colors.transparent,
                          ),
                          child: new CheckboxListTile(
                          //tileColor: Colour.gray,
                          selectedTileColor: Colour.black,
                          activeColor: Colors.pink[300],
                          dense: true,
                          //font change
                          title: new Text(
                            checkBoxListTileModel[index].title,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 0.5),
                          ),
                          value: checkBoxListTileModel[index].isCheck,
                          secondary: Container(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              checkBoxListTileModel[index].img,
                              fit: BoxFit.cover,
                            ),
                          ),
                          onChanged: (bool? val) {
                            itemChange(val!, index);
                          }),
                    )
                  ],
                ),
              ),
            );
           }
          ),
         ),
            Center(
            child: OutlinedButton(
              style: TextButton.styleFrom(
              minimumSize: Size(200, 50),
               backgroundColor: Colour.orange ,
               shape: StadiumBorder(),
              ),
              child:       
                  Text(
                    'CONFIRM',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                    ),
                  ),
             
              //adding a dish with its ingredients to the cart
              onPressed: () {
                Navigator.push(
                  context,MaterialPageRoute(
                  builder: (_) =>StatusWidg())
                  );
              },
            ),
        ),
       ],
     ), 
     
    );
  }
  void itemChange(bool val, int index) {
    if (val=false){
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
    }
  }
}
class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel({required this.userId, required this.img, required this.title, required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/cash-on-delivery.png',
          title: "Cash on delivery",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/paypal.png',
          title: "Paypal",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'assets/images/logo.png',
          title: "Edahabia",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          img: 'assets/images/logo-square.png',
          title: "CIB",
          isCheck: false),
    ];
  }
}