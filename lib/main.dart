import 'package:alcohol_or_gasoline/classes/Fuel.dart';
import 'package:alcohol_or_gasoline/enum/fuel_type.dart';
import 'package:alcohol_or_gasoline/widgets/inputField.widget.dart';
import 'package:alcohol_or_gasoline/widgets/logo.widget.dart';
import 'package:alcohol_or_gasoline/widgets/success.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final MoneyMaskedTextController _gasolineController =
      new MoneyMaskedTextController();
  final MoneyMaskedTextController _alcoholController =
      new MoneyMaskedTextController();
  final Fuel _gasoline =
      new Fuel(effectiveness: 1.00, fuelType: FuelType.Gasoline, price: 0.00);
  final Fuel _alcohol =
      new Fuel(effectiveness: 0.7, fuelType: FuelType.Alcohol, price: 0.00);
  String _resultText;

  double parseMaskedValue(String value) {
    RegExp regExp = new RegExp(r'[,.]');
    String formattedValue = value.replaceAll(regExp, '');
    double parsedValue = double.parse(formattedValue);

    return parsedValue;
  }

  void calculateResult(Fuel firstFiel, Fuel secondFuel) {
    if (firstFiel.price != secondFuel.price) {
      Fuel fuel = Fuel.mostWorthIt(this._gasoline, this._alcohol);
      String result = getFuelTypeName(fuel.fuelType);

      setState(() {
        _resultText = '$result is the most worthwhile';
      });
    }
  }

  @override
  void initState() {
    super.initState();
    this._gasolineController.afterChange = (String value, double nextValue) {
      double parsedValue = this.parseMaskedValue(value);
      this._gasoline.setPrice(parsedValue);
    };

    this._alcoholController.afterChange = (String value, double nextValue) {
      double parsedValue = this.parseMaskedValue(value);
      this._alcohol.setPrice(parsedValue);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        children: <Widget>[
          Logo(),
          InputField(
            label: 'Gasoline: ',
            inputController: this._gasolineController,
          ),
          InputField(
            label: 'Alcohol: ',
            inputController: this._alcoholController,
          ),
          SizedBox(height: 40),
          _resultText != null
              ? Success(reset: () {}, result: _resultText)
              : SizedBox(height: 40),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0)),
            padding: EdgeInsets.all(15),
            color: Colors.white.withOpacity(0.8),
            onPressed: () => calculateResult(_gasoline, _alcohol),
            child: Text(
              'Calculate',
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
