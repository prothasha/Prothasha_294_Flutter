
import 'package:flutter/material.dart';
import 'package:prothasha_294/widgets/input_field.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<StatefulWidget> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double result = 0;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0F5),
      appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: const Color(0xFF91375C),
        foregroundColor: const Color(0xFFFFFFFF),
      ),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 300,
          child: Card(
            color: const Color(0xFFF8DFEA),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: DefaultTextStyle(
                style: const TextStyle(
                  color: Color(0xFF91375C),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InputField(
                        controller: controller1,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        labelText: "Number 1",
                        hintText: "Enter a number",
                        prefixIcon: Icon(
                          Icons.numbers,
                          color: Color(0xFF91375C),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Field is empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      InputField(
                        controller: controller2,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        labelText: "Number 2",
                        hintText: "Enter a number",
                        prefixIcon: Icon(
                          Icons.numbers,
                          color: Color(0xFF91375C),
                        ),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Field is empty";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFC2537F),
                          foregroundColor: const Color(0xFFFFFFFF),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            String num1 = controller1.text;
                            String num2 = controller2.text;
                            result =
                                double.parse(num1) + double.parse(num2);
                            setState(() {});
                          }
                        },
                        child: Text("Calculate"),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Answer: $result",
                        style: const TextStyle(
                          color: Color(0xFF91375C),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    //throw UnimplementedError();
  }
}
