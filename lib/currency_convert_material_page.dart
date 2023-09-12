import 'package:flutter/material.dart';
//1. Create a variable that the stores the converted current value
//2. Create a function that multiplies the value given by the textField with 81
//3. Store the value in the variable that we created
//4. Display the variable

class CurrencyConvertMaterialPage extends StatefulWidget {
  const CurrencyConvertMaterialPage({super.key});

  @override
  State<CurrencyConvertMaterialPage> createState() => 
    _CurrentConvertMaterialPageState();
}

class _CurrentConvertMaterialPageState 
    extends State<CurrencyConvertMaterialPage> {
  double result=0;
  TextEditingController textEditingController = TextEditingController();

  void convert(){
    result = double.parse(textEditingController.text) * 80;
    setState(() {});
  }

  @override
  Widget build(BuildContext context){   
    final border = OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                    borderRadius: BorderRadius.circular(15)
                   );
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: const Text('Currency Convert App'),
          centerTitle: true,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'INR ${result!=0 ? result.toStringAsFixed(3): result.toStringAsExponential(0)}',
                  style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                // Padding
                // Container
                TextField(
                  controller: textEditingController,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
                ),
                const SizedBox(height: 10),
                // button
          
                // raised button
                //appears like a text
                ElevatedButton(
                  onPressed: convert,
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                  child: const Text('Convert'),
                )
              ],
            ),
          ), 
        ),
      ),
    );
  }
}

// class CurrencyConvertMaterialPagee extends StatelessWidget{
//   const CurrencyConvertMaterialPagee({super.key});
  
// }