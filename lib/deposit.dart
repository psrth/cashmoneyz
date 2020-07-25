import 'package:cashmoneyz/controller.dart';
import 'package:cashmoneyz/model/model.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class deposit extends StatefulWidget {
  @override
  _depositState createState() => _depositState();
}

class _depositState extends State<deposit> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // text field controllers
  TextEditingController depositController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  String spendController = "";

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      MoneyForm moneyForm = MoneyForm(typeController.text,
          descriptionController.text, depositController.text, spendController);

      MoneyController moneyController = MoneyController((String response) {
        print(response);
        if (response == MoneyController.STATUS_SUCCESS) {
          _showSnackBar("Submitted");
        } else {
          _showSnackBar("Error");
        }
      });

      _showSnackBar("Sending.");
      moneyController.submitMoney(moneyForm);
    }
  }

  // Method to show snackbar with 'message'.
  _showSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text('Deposit Money'),
        ),
        body: Form(
          key: _formKey,
          child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 100,
                horizontal: 30,
              ),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: depositController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Deposit Amount";
                      } else
                        return null;
                    },
                    decoration: InputDecoration(hintText: "Amount Deposited"),
                  ),
                  TextFormField(
                    controller: typeController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Type";
                      } else
                        return null;
                    },
                    decoration: InputDecoration(hintText: "Transaction Type"),
                  ),
                  TextFormField(
                    controller: descriptionController,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter Description";
                      } else
                        return null;
                    },
                    decoration: InputDecoration(hintText: "Description"),
                  ),
                  RaisedButton(
                    color: Colors.black,
                    textColor: Colors.white,
                    onPressed: _submitForm,
                    child: Text('Update Ledger'),
                  )
                ],
              )),
        ));
  }
}
