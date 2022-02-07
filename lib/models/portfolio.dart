import 'package:flutter/material.dart';
import 'stock.dart';
import 'dart:convert';

class Portfolio extends ChangeNotifier{
  List<Stock> portfolio = [];

  List<Stock> get list => portfolio;

  num get getprice {
    num p = 0;
    for(int i=0;i<portfolio.length; i++){
      p+=int.parse(portfolio[i].price);
    }
    return p;
  }
  void addstock(Stock st){
    portfolio.add(st);
  }

  void removestock(Stock st){
    portfolio.remove(st);
    notifyListeners();
  }
}