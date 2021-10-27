import 'package:flutter/material.dart';

class CounterApp  extends StatelessWidget {
  const CounterApp ({ Key? key }) : super(key: key);

_showDialog(BuildContext context){
  return showDialog(
  context: context,
  barrierDismissible: false,
  builder: (BuildContext context){
return AlertDialog(
title: Text("Alert"),
content: Text("Are you sure.?"),
actions: [
  TextButton(
    onPressed: (){},
    child: Text("yes"),
  ),
  TextButton(
    onPressed: (){
      Navigator.pop(context);
    },
    child: Text("no"),
  ),
],

);

  }
  );
}

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
//appbar 56 px

actions: [
  PopupMenuButton(


    onSelected: (value){
      print("value: $value");
      if(value == 1){
print("login");
      }
      else{
        print("logout");
      }
    },
icon: Icon(Icons.more_horiz_rounded),

shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(30),
  side: BorderSide(
    color: Colors.amber,
    width: 3
  )
),
  
offset: Offset(
10,70

),

    itemBuilder: (BuildContext context){

return[
  PopupMenuItem( 
    value: 1,
    child: Text("Login")),
  PopupMenuItem(
    value: 2,
    child: Text("Logout")),
];

    }
    
    
    )
],

      ),
      body: null,

 floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    floatingActionButton: FloatingActionButton.extended(onPressed: (

     
    ){
 _showDialog( context);
    }, 
tooltip: "Add",
elevation: 50, 
hoverElevation: 90,
    shape: RoundedRectangleBorder(  
      borderRadius: BorderRadius.circular(20),
      side: BorderSide(
        color: Colors.tealAccent,
        width: 5
      )
       ),
    hoverColor: Colors.lime,
    label:Text("add"),
    icon: Icon(Icons.add),)
    );
  }
}