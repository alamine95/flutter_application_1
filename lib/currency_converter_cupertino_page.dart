import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() => _CurrencyConverterCupertinoPageState();
}

class _CurrencyConverterCupertinoPageState extends State<CurrencyConverterCupertinoPage> {
  double result=0;
  TextEditingController textEditingController = TextEditingController();

  void convert(){
    result = double.parse(textEditingController.text) * 80;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemGrey3,
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          middle: Text('Currency Convert App'),
        ),
        child: Center(
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
                CupertinoTextField(
                  controller: textEditingController,
                  style: TextStyle(
                    color: CupertinoColors.black,
                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  placeholder: 'Please entrer the amount in USD',
                  prefix: const Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
                const SizedBox(height: 10),
                // button
          
                // raised button
                //appears like a text
                CupertinoButton(
                  onPressed: convert,
                  color: CupertinoColors.black,
                  child: const Text('Convert'),
                )
              ],
            ),
          ), 
        ),
    );
  }
}