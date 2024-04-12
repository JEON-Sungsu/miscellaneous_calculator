import 'package:flutter/material.dart';
import 'package:miscellaneous_calculator/presentation/view_model/home_screen/real_life_calculator_view_model.dart';
import 'package:provider/provider.dart';

class BMICalculatorScreen extends StatefulWidget {
  // final RealLifeCalculatorViewModel calculator;

  const BMICalculatorScreen({super.key});

  @override
  State<BMICalculatorScreen> createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  @override
  void dispose() {
    firstController.dispose();
    secondController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<RealLifeCalculatorViewModel>();
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            controller: firstController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: '키를 입력해주세요.',
              labelText: '키',
            ),
            keyboardType: TextInputType.number,
            validator: (input) {
              if (input == null || input.isEmpty) {
                return '키를 입력해주세요.';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 12,
          ),
          TextFormField(
            controller: secondController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: '몸무게를 입력해주세요.',
              labelText: '몸무게',
            ),
            keyboardType: TextInputType.number,
            validator: (input) {
              if (input == null || input.isEmpty) {
                return '몸무게를 입력해주세요.';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '결과 : ${viewModel.state.bmiResult}',
                style: const TextStyle(color: Color.fromRGBO(2, 52, 63, 1)),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                      Color.fromRGBO(2, 52, 63, 1)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() == null) {
                    return;
                  }
                  final height = double.parse(firstController.text);
                  final weight = double.parse(secondController.text);
                  viewModel.checkBMI(weight, height);
                },
                child: const Text(
                  '결과 확인',
                  style: TextStyle(
                    color: Color.fromRGBO(240, 237, 204, 1),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
