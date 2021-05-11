import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kodora_ux/colors.dart';
import 'package:kodora_ux/kodora_ux.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }
}

String Solde ="";

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  List<String> listSequence = null;

  final RoundedLoadingButtonController _btnController = new RoundedLoadingButtonController();
  @override
  void initState() {
    _do();
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: nColorNull,
    statusBarIconBrightness: Brightness.light,
    systemNavigationBarColor: nColorPrimaryLight
    ,systemNavigationBarIconBrightness:  Brightness.dark));
    //showDailyAtTime2 ();
   // ControlN();
  }
  
  String  _pross="0%", _photo = "https://firebasestorage.googleapis.com/v0/b/challenge-48.appspot.com/o/photos%2Fimages.jpeg?alt=media&token=b19fb049-95ce-4194-a638-e0508866164c" , _salut = "Salut Kaliq", _curentSem= " Semaine 05", _payedSem= "05/48" , _solde = "204 000 FCFA", _PcState = "60 % de l'objectf ";
  String  _sem_key, _Sem;
  int _prossInt = 0;


  void _do() async {

      setState(() {
        _salut = "Salut " + "Kaliq";
      });
      setState(() {
        _curentSem = "Semaine "+ "18";
      });

      setState(() {
        _photo = "https://firebasestorage.googleapis.com/v0/b/challenge-48.appspot.com/o/photos%2Fimages.jpeg?alt=media&token=b19fb049-95ce-4194-a638-e0508866164c";
      });

      setState(() {
        _solde =  "20000";
        Solde =  _solde;
      });

      setState(() {
        _payedSem = "15"+"/52";
      });

      setState(() {
        double _Int = 20;
        _prossInt= _Int.toInt();
      });
  }

  void _doForPayement() async {
  }

  _doForShare() async {
  }

  void _doForAll() async {
  }

  _buildHomeHeader(BuildContext context) {
    return new Container(
              height: MediaQuery.of(context).size.width / 5,
              margin: EdgeInsets.fromLTRB(
                  w(20),
                  h(30),
                  w(20),
                  0),
              child:  new Stack(
                children: <Widget>[
                  new Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: new Row(
                        children: <Widget>[
                          new ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child:  new Container(
                              padding:EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: nColorWhite,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              height: h(50),
                              width: h(50),
                              child:  new ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child:  Image.network(_photo, fit: BoxFit.cover,),
                              ),
                            ),
                          ),
                          new SizedBox(
                            width: w(16),
                          ),
                          new Align(
                            alignment: AlignmentDirectional.centerStart,
                            child:  new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Text(
                                    _salut,
                                    style: TextStyle(
                                        color: nColorWhite,
                                        fontFamily: 'Gotham',
                                        fontWeight: FontWeight.w500,
                                        fontSize: s(22)),
                                  ),
                                  new SizedBox(
                                    height: s(10),
                                  ),
                                  new Text(
                                    _curentSem,
                                    style: TextStyle(
                                        color: nColorWhite,
                                        fontFamily: 'Gotham',
                                        fontWeight: FontWeight.w400,
                                        fontSize: s(16)),
                                  ),
                                ]
                            ),
                          )
                        ]
                    ),
                  ),
                  new Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child:  GestureDetector(
                        onTap:() {
                        },
                        child: new Image.asset(
                            "assets/png/img_notification.png",
                            fit: BoxFit.cover,
                            width: w(34),
                            height: h(28)
                        )
                      ),

                  ),
                ],
              )
          );
  }

  _buildHome(BuildContext context) {
    return  new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildHomeHeader(context),
          _buildBody(context),
        ]
    );

  }

  _buildBody(BuildContext context) {
    return Container(
      width: screenWidth,
      height: h(685),
      child: Stack(
        children: <Widget>[
          new Container(
            width: screenWidth,
            height: h(390),
            margin: EdgeInsets.fromLTRB(
                w(20),
                0,
                w(20),
                h(14)),
            child:   new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new SizedBox(
                    height: h(10),
                  ),
                  new Text(
                    'Solde actuel',
                    style: TextStyle(
                        color: nColorWhite,
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.w400,
                        fontSize: s(16)),
                  ),
                  new SizedBox(
                    height: h(16),
                  ),
                  new Text(
                    _solde+ " FCFA",
                    style: TextStyle(
                        color: nColorWhite,
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.w700,
                        fontSize: s(34)),
                  ),
                  new SizedBox(
                    height: s(22),
                  ),
                  new Row(
                      children: <Widget>[
                        new Container(
                          height:  h(40),
                          width: h(40),
                          child: new Stack(
                              children: <Widget>[
                                new Image.asset(
                                 _prossInt<10 ?'assets/png/img_100.png':
                                 _prossInt<12.5 ?'assets/png/img_125.png':
                                 _prossInt<25 ?'assets/png/img_250.png':
                                 _prossInt<37.5 ?'assets/png/img_375.png':
                                 _prossInt<50 ?'assets/png/img_500.png':
                                 _prossInt<62.5 ?'assets/png/img_625.png':
                                 _prossInt<75 ?'assets/png/img_750.png':
                                 _prossInt<87.5 ?'assets/png/img_875.png':
                                 'assets/png/img_1000.png',
                                  fit: BoxFit.cover,
                                ),
                                new Center(
                                  child: new Text(
                                    _prossInt.toString() + "%",
                                    style: TextStyle(
                                        color: nColorWhite,
                                        fontFamily: 'Gotham',
                                        fontWeight: FontWeight.w500,
                                        fontSize: s(12)),
                                  ),
                                )
                              ]
                          ),
                        ),
                        new SizedBox(
                          width: w(16),
                        ),
                        new Align(
                          alignment: AlignmentDirectional.centerStart,
                          child:  new Text(
                            _prossInt.toString() +" % de l'objectif",
                            style: TextStyle(
                                color: nColorWhite,
                                fontFamily: 'Gotham',
                                fontWeight: FontWeight.w500,
                                fontSize: s(18)),
                          ),
                        )
                      ]
                  ),
                  new SizedBox(
                    height: h(32),
                  ),
                  new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        new Container(
                          width: w(144),
                          height: h(75),
                          decoration: BoxDecoration(
                            color: nColorWhiteOpt15,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.fromLTRB(
                              w(10),
                              0,
                              0,
                              0),
                          child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Text(
                                  'Semaines payées',
                                  style: TextStyle(
                                      color: nColorWhite,
                                      fontFamily: 'Gotham',
                                      fontWeight: FontWeight.w400,
                                      fontSize: s(16)),
                                ),
                                new Text(
                                  _payedSem,
                                  style: TextStyle(
                                      color: nColorWhite,
                                      fontFamily: 'Gotham',
                                      fontWeight: FontWeight.w500,
                                      fontSize: s(24)),
                                ),
                              ]
                          ),
                        ),
                        new Container(
                          width: w(144),
                          height: h(75),
                          padding: EdgeInsets.fromLTRB(
                              w(10),
                              0,
                              0,
                              0),
                          decoration: BoxDecoration(
                            color: nColorWhiteOpt15,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Text(
                                  'Montant visé',
                                  style: TextStyle(
                                      color: nColorWhite,
                                      fontFamily: 'Gotham',
                                      fontWeight: FontWeight.w400,
                                      fontSize: s(16)),
                                ),
                                new Text(
                                  "689.000",
                                  style: TextStyle(
                                      color: nColorWhite,
                                      fontFamily: 'Gotham',
                                      fontWeight: FontWeight.w500,
                                      fontSize: s(24)),
                                ),
                              ]
                          ),
                        ),
                      ]
                  ),
                  new SizedBox(
                    height: h(46),
                  ),
                ]
            ),
          ),
          SingleChildScrollView(child: _buildBottomBody(context)),
        ],
      ),
    );
  }

  _buildBottomBody(BuildContext context) {
    return new SingleChildScrollView(
        child: new Container(
          margin: EdgeInsets.fromLTRB(
              0,
             h(250),
              0,
              0),
          decoration: BoxDecoration(
              color: nColorWhite,
              borderRadius: BorderRadius.only(topLeft: Radius.circular( h(36)),topRight: Radius.circular( h(36))),
          ),
          width: screenWidth,
          height:  h(680),//-SizeConfig.size2,
          padding: EdgeInsets.only(
              left: h(20),
              right: h(20),
              top: h(36)),
          child: Align(
            alignment: Alignment.topLeft,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Align(
                  alignment: AlignmentDirectional.center,
                  child: new Text(
                      "1000 FCFA",
                    style: TextStyle(
                        color: nColorBlack,
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.w500,
                        fontSize: h(24)),
                  )
                ),
                new SizedBox(
                  height: h(12),
                ),
                new Align(
                  alignment: AlignmentDirectional.center,
                  child: new Text(
                      _Sem == "0" ? 'à cotiser cette semaine' : 'Tu as déjà payé pour cette semaine',
                    style: TextStyle(
                        color:_Sem == "0"? nColorGray:nColorBlack,
                        fontFamily: 'Gotham',
                        fontWeight: FontWeight.w400,
                        fontSize: s(16)),
                  )
                ),
                new SizedBox(
                  height: h(24),
                ),
                new Align(
                  alignment: AlignmentDirectional.center,
                  child:  new RoundedLoadingButton(
                    height: h(50),
                    width: screenWidth,
                    animateOnTap: false,
                    color: _Sem == "0"? nColorPrimary:nColorPrimaryLightOpt50,
                    child: Text(_Sem == "0"? 'Payer pour cette semaine':'Rien a payer', style: TextStyle(color: Colors.white,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                        fontSize: s(16))
                    ),
                    controller: _btnController,
                    onPressed: _Sem == "0"? _doForPayement: null,
                    duration: Duration(milliseconds: 2000),
                    borderRadius: 10,
                  )
                ),
                new SizedBox(
                  height: h(30),
                ),
                new Text(
                 'Bravo, aucune cotisation dû tu es un chef bro, papa nan CFA',
                  maxLines: 3,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      color: nColorBlack,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.w400,
                      fontSize: s(18)),
                ),
                new SizedBox(
                  height: h(20),
                ),
                new Align(
                    alignment: AlignmentDirectional.center,
                    child: new Container(
                      width: screenWidth,
                      height: h(64),
                      decoration: BoxDecoration(
                        color: nColorPrimaryLightOpt10,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Align(
                                alignment: AlignmentDirectional.center,
                                child:   new Text(
                                  'Aucune semaine dû ',
                                  style: TextStyle(
                                      color: nColorBlack,
                                      fontFamily: 'Gotham',
                                      fontWeight: FontWeight.w500,
                                      fontSize: s(16)),
                                ),
                            ),
                            new SizedBox(
                              width: w(20),
                            ),
                            new Align(
                                alignment: AlignmentDirectional.center,
                                child:  new RoundedLoadingButton(
                                  height: h(46),
                                  width: w(95),
                                  animateOnTap: false,
                                  color: nColorPrimary,
                                  child: Text('Voir tout', style: TextStyle(color: Colors.white,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      fontSize: s(16))),
                                  controller: _btnController,
                                  onPressed: _doForAll,
                                  duration: Duration(milliseconds: 2000),
                                  borderRadius: 5,
                                )
                            ),
                          ]
                      ),
                    ),
                ),
                new SizedBox(
                  height: h(34),
                ),
                new Align(
                    alignment: AlignmentDirectional.center,
                    child:  new RoundedLoadingButton(
                      height: h(50),
                      width: screenWidth,
                      animateOnTap: false,
                      color: nColorWhite,
                      child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new SizedBox(
                              width: w(24),
                            ),
                            new Image.asset("assets/png/img_share.png",
                                fit: BoxFit.cover,
                                width: w(24),
                                height: h(24)
                            ),
                            new SizedBox(
                              width: w(70),
                            ),
                            Text('Challenger un ami', style: TextStyle(color: nColorBlack,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w500,
                                fontSize: s(16))),
                          ]),
                      controller: _btnController,
                      onPressed: _doForShare,
                      duration: Duration(milliseconds: 2000),
                      borderRadius: 10,
                    )
                ),
                new SizedBox(
                  height: h(36),
                ),
                new Text(
                  'Historique',
                  style: TextStyle(
                      color: nColorBlack,
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.w500,
                      fontSize: s(20)),
                ),
                new SizedBox(
                  height: h(20),
                ),
                new Container(
                width: screenWidth,
                height: h(146),
                child: _getReturnView(),
                ),
              ],
            ),
          ),
        ));
  }

  _buildParent(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: nColorPrimary,
      ),
      child: _buildHome(context),
    );
  }

  _getReturnView() {
    if (listSequence == null) {
      return new Center(child: new Align(
        alignment: AlignmentDirectional.center,
        child:  new Text(
          'Depuis là tu n’as encore rien cotiser hein frère, c’est la galère ???',
          maxLines: 2,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: nColorGray,
              fontWeight: FontWeight.w400,
              fontSize: s(18)),
        ),
      ),);
    }else{
      if(listSequence.length==0){
        return new Center(child: new Align(
          alignment: AlignmentDirectional.center,
          child:  new Text(
            'Depuis là tu n’as encore rien cotiser hein frère, c’est la galère ???',
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: nColorGray,
                fontWeight: FontWeight.w400,
                fontSize:  s(18)),
          ),
        ),);
      }
      else{
        return new ListView.builder(
           // reverse: true,
            padding: EdgeInsets.zero,
            shrinkWrap: true,
           // physics: NeverScrollableScrollPhysics(),
            itemCount: listSequence.length,
            itemBuilder: (context, position){
              return Container();
            }
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Ux().init(context, 375, 762);
    _do();
    return new Scaffold(body: _buildParent(context));
  }

}
