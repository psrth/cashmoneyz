import 'dart:convert' as convert;
import 'package:cashmoneyz/model/model.dart';
import 'package:http/http.dart' as http;

class MoneyController {
  final void Function(String) callback;
  static const String URL =
      "https://script.google.com/macros/s/AKfycbz1krJEGhJPiMDcWnavbSt92TTEXyaDfOa7bFuSLNmbq87pQto/exec";
  static const STATUS_SUCCESS = "SUCCESS";
  MoneyController(this.callback);
  void submitMoney(MoneyForm moneyForm) async {
    try {
      await http.get(URL + moneyForm.toParams()).then((response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      print(e);
    }
  }
}
