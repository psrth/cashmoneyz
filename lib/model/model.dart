class MoneyForm {
  String _type;
  String _description;
  String _deposit;
  String _spend;

  MoneyForm(this._type, this._description, this._deposit, this._spend);

  String toParams() =>
      "?type=$_type&description=$_description&deposit=$_deposit&spend=$_spend";
}
