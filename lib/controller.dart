import "package:cashmoneyz/model/model.dart";
import 'package:http/http.dart' as http;

class MoneyController {
  final void Function(String) callback;
  static const String URL =
      "https://script.google.com/macros/s/AKfycbz1krJEGhJPiMDcWnavbSt92TTEXyaDfOa7bFuSLNmbq87pQto/exec";
  static const STATUS_SUCCESS = "SUCCESS";
  MoneyController(this.callback);
  void submitMoney(MoneyController moneyController) async {
    try {
      await http.get()
    } catch (e) {
      print(e);
    }
  }
}
