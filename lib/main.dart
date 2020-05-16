import 'package:flutter/material.dart';
import 'package:flutterapp/myhome.dart';
import 'package:flutterapp/tabs/themenotificator.dart';
import 'package:provider/provider.dart';
import 'tabs/home.dart';
import 'tabs/search.dart';
import 'tabs/comingsoon.dart';

void main() =>  runApp( ChangeNotifierProvider<DynamicTheme>(  
       builder: (_) => DynamicTheme(),  
       child: MyHome(),  
     ), 
);

class MyHome extends StatefulWidget {
   
  @override
  MyHomeState createState() => new MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  initState()  {
    super.initState();
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<DynamicTheme>(context);      
    Map<int, Widget> op = {1: MyHome(), 2: MyHome()};
    return  MaterialApp(
        title: "Todo Sobre Series",
        debugShowCheckedModeBanner: false,
        theme: themeProvider.getDarkMode() ? ThemeData.dark() : ThemeData.light(),          
        // home: home(controller) ,
        home: CustomSplash(
        imagePath: 'assets/images/flix.png',
        backGroundColor: Colors.red,        
        animationEffect: 'zoom-in',
        logoSize: 200,
        home: home(controller),
        customFunction: duringSplash,
        duration: 4500,
        type: CustomSplashType.StaticDuration,
        outputAndHome: op,
    ),
        );
        // home_(controller));
  }

  
}

Function duringSplash = () {
  return 5;
};

Widget home(controller) {
  return Scaffold(
    body: new TabBarView(
      // Add tabs as widgets
      children: <Widget>[
        new HomePage(),
        new SearchPage(),
        new ComingSoonPage()
      ],
      // set the controller
      controller: controller,
    ),
    resizeToAvoidBottomPadding: true,
    bottomNavigationBar: new Material(      
      elevation: 2.0,
     
      color: Colors.black87,
      child: new TabBar(
        labelPadding: EdgeInsets.symmetric(horizontal: 2.0),
        indicatorColor: Colors.black,
        tabs: <Tab>[
          new Tab(
            icon: new Icon(Icons.home),
            text: 'Inicio',
          ),
          new Tab(
            icon: new Icon(Icons.search),
            text: 'Buscar',
          ),
          new Tab(
            icon: new Icon(Icons.settings),
            text: 'Ajustes',
          ),
        ],        
        controller: controller,
      ),
    ),
  );
}
