import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    title:"杨皓01",
    home:new FirstScreen()
  ));
}


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('导航页面')),
      body: Center(
        child: RaisedButton(
          child: Text('查看商品详情页'),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(
              builder:(context)=>new SecondScreen()
            ));
          },
        ),
      )
    );
  }
}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('卢佳卢佳')),
      body: Center(
        child: RaisedButton(
          child: Text('返回'),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}


