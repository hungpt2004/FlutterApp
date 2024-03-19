import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen ({super.key});

  @override
  State <CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
    double billAmount = 0.0;
    double tipPercentage = 0.10;
    int numberOfPeople = 1;

    double calculateTotalBill() {
      return billAmount + (billAmount * tipPercentage);
    }

    double calculatePerPerson() {
      return calculateTotalBill() / numberOfPeople;
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Tip Calculator'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Enter Bill Amount:'),
              SizedBox(height: 10),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    billAmount = double.tryParse(value) ?? 0.0;
                  });
                },
              ),
              SizedBox(height: 20),
              Text('Select Tip Percentage:'),
              Slider(
                value: tipPercentage * 100,
                onChanged: (value) {
                  setState(() {
                    tipPercentage = value / 100;
                  });
                },
                min: 0,
                max: 30,
                divisions: 6,
                label: '${(tipPercentage * 100).toStringAsFixed(0)}%',
              ),
              SizedBox(height: 20),
              Text('Number of People: $numberOfPeople'),
              Slider(
                value: numberOfPeople.toDouble(),
                onChanged: (value) {
                  setState(() {
                    numberOfPeople = value.toInt();
                  });
                },
                min: 1,
                max: 10,
                divisions: 9,
              ),
              SizedBox(height: 20),
              Text('Total Bill: \$${calculateTotalBill().toStringAsFixed(2)}'),
              Text('Per Person: \$${calculatePerPerson().toStringAsFixed(2)}'),
            ],
          ),
        ),
      );
    }
  }
