import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';

class Product{
  final String title;//商品标题
  final String description;//描述
  Product(this.title,this.description);
}

void main(){
  runApp(MaterialApp(
    title: '卢佳卢佳',
    home: ProductList(
      prodcuts:List.generate(
          20, (i) => Product('女朋友$i','这是一个杨皓的女朋友，编号为$i'))
    )
  ));
}
class ProductList extends StatelessWidget{
  final List<Product>prodcuts;
  ProductList({Key key,@required this.prodcuts}):super(key:key);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('女朋友列表')),
      body: ListView.builder(
        itemCount: prodcuts.length,
        itemBuilder: (context,index){
          return ListTile(
            title:Text(prodcuts[index].title),
            onTap:(){}
          );
        },
      )
    );
  }
}