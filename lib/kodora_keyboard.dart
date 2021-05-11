
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'eeKeyModels.dart';

String Code = "";

class Kodora_keyboard extends StatefulWidget {
//Background

//text
  String txtUn ;

  Kodora_keyboard({
    this.txtUn,
  });

  _keyboardState createState() => _keyboardState(txtUn);
}

class _keyboardState extends State<Kodora_keyboard> {

  String txtUn;
  _keyboardState(this.txtUn);

  _buildGridView(BuildContext context) {
    return new Container(
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.4,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10.0,
          ),
          itemCount: 12,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {
                _Service(index);
              },
              child: _buildServiceItem(index, context),
            );
          }),
    );
  }

  _buildServiceItem(int index, BuildContext context) {
    List<KeyModels> services = [
      new KeyModels("1",1),
      new KeyModels("2",2),
      new KeyModels("3",3),
      new KeyModels("4",4),
      new KeyModels("5",5),
      new KeyModels("6",6),

      new KeyModels("7",7),
      new KeyModels("8",8),
      new KeyModels("9",9),
      new KeyModels(" ",10),
      new KeyModels("0",11),
      new KeyModels("spr",11),
    ];

    return new Container(
        height: MediaQuery.of(context).size.height / 3.8,
        decoration:  BoxDecoration(
            color: nColorWhite,
            border:  Border(
                top: BorderSide(color: nColorWhite ),
                left: BorderSide(color: nColorWhite),
                right: BorderSide(color: nColorWhite),
                bottom: BorderSide(color: nColorWhite)
            )
        ),
        child: new Stack(
          children: <Widget>[
            new Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  new Stack(
                      children: <Widget>[
                        new Container(
                          child:  services[index].name == "spr" ?
                          new Container(
                              width: 24,
                              height: 22,
                              child: new Image.asset(
                                'assets/png/img_delete.png',
                                fit: BoxFit.cover,
                              )
                          ):
                          Text(
                            services[index].name,
                            style: TextStyle(
                                color: nColorBlack,
                                fontSize: 32,
                                fontFamily: 'Gotham',
                                fontWeight: FontWeight.w500
                            ),),
                        ),
                      ]
                  )
                ],
              ),
            ),
          ],
        ));
  }

  _Service(int index) {
    if (Code.length < 4) {
      if (index == 0) {
        setState(() {
          Code =  Code + "1";
        });
        
      }
      if (index == 1) {
        setState(() {
          Code =  Code + "2";
        });
        
      }
      if (index == 2) {
        setState(() {
          Code =  Code + "3";
        });
        
      }
      if (index == 3) {
        setState(() {
          Code =  Code + "4";
        });
        
      }
      if (index == 4) {
        setState(() {
          Code =  Code + "5";
        });
        
      }
      if (index == 5) {
        setState(() {
          Code =  Code + "6";
        });
        
      }
      if (index == 6) {
        setState(() {
          Code =  Code + "7";
        });
        
      }
      if (index == 7) {
        setState(() {
          Code =  Code + "8";
        });
        
      }
      if (index == 8) {
        setState(() {
          Code =  Code + "9";
        });
        
      }
      if (index == 9) {
        setState(() {

        });
        
      }
      if (index == 10) {
        setState(() {
          Code =  Code + "0";
        });
        
      }
      if (index == 11) {
        setState(() {
          int d = Code.length-1;
          Code =  Code.substring(0,d);
        });
        
      }
    }
  }
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildGridView(context);
  }
}
