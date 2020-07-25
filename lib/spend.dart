import 'package:flutter/material.dart';
import 'controller.dart';
import 'main.dart';
import 'model/model.dart';

class spend extends StatefulWidget {
  @override
  _spendState createState() => _spendState();
}

class _spendState extends State<spend> {
  final _formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  // text field controllers
  TextEditingController spendController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  String depositController = "";

// Method to show snackbar with 'message'.
  _showSnackBar(String message) {
    final snackBar = SnackBar(content: Text(message));
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  void _submitForm() {
    if (_formKey.currentState.validate()) {
      MoneyForm moneyForm = MoneyForm(typeController.text,
          descriptionController.text, depositController, spendController.text);

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Spend Money'),
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
                  controller: spendController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter Spend Amount";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Spend Amount"),
                ),
                TextFormField(
                  controller: typeController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter Type";
                    }
                    return null;
                  },
                  decoration: InputDecoration(hintText: "Transaction Type"),
                ),
                TextFormField(
                  controller: descriptionController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter Description";
                    }
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
      ),
    );
  }
}
