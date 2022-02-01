import 'package:flutter/material.dart';

class Stock {
  String symbol;
  String company;
  String price;
  String chg;

  Stock(
      {required this.symbol, required this.company, required this.price, required this.chg});
}
    List<Stock> stocks = [
      Stock(symbol: "RELIANCE", company: "Reliance Industries Limited", price: "490", chg: "+3.5"),
      Stock(symbol: "TATACHEM", company: "Tata Chemicals Limited", price: "945", chg: "+5"),
      Stock(symbol: "TATACOMM", company: "Tata Communications Limited", price: "1315", chg: "-2.3"),
      Stock(symbol: "CANBK", company: "Canara Bank", price: "235", chg: "-0.8"),
      Stock(symbol: "TCS", company: "Tata Consultancy Services LTD", price: "3698", chg: "3.4"),
      Stock(symbol: "HDFC", company: "Housing Development Finance Corporation Limited", price: "2545", chg: "-2.1"),
      Stock(symbol: "HCLTECH", company: "HCL Technologies Limited", price: "1090", chg: "2.9"),
      Stock(symbol: "HEROMOTOCO", company: "Hero MotoCorp Limited", price: "2724", chg: "3.4"),
      Stock(symbol: "TATAMOTORS", company: "Tata Motors Limited", price: "241", chg: "-2.5"),
      Stock(symbol: "ADANIGREEN", company: "Adani Green Energy Limited", price: "1940", chg: "-2.7"),
      Stock(symbol: "TECHM", company: "Tech Mahindra Limited", price: "1450", chg: "1.6"),
      Stock(symbol: "TVSMOTOR", company: "TVS Motor Company Limited", price: "610", chg: "1.3"),
      Stock(symbol: "BHEL", company: "Bharat Heavy Electricals Limited", price: "60", chg: "5.3"),
    ];



