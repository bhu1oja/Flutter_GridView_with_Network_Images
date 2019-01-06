import 'package:flutter/material.dart';
import 'package:gridview/dataStore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
     home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:  AppBar(
        title: Text("Grid View"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemCount: storeItems.length ,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                //here you can add youy action on grid element Tab
              },
              child: Card(
               child: Stack(
                 alignment: FractionalOffset.bottomCenter,
                 children: <Widget>[
                   Container(
                             decoration: BoxDecoration(
                              image: DecorationImage(
                              image: NetworkImage(storeItems[index].itemImage)
                              )
                              ),
                              ),
                    Container(
                      alignment: Alignment.center,
                      height: 40.0,
                      color: Colors.indigo,
                      child: Text(storeItems[index].itemName,
                      style: TextStyle     (fontWeight: FontWeight.w700, fontSize: 16.0, color: Colors.white),),
                    )
                 ],
               ),
              ),
            );
          },),
    );
  }

}