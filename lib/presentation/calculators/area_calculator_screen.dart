import 'package:flutter/material.dart';
import 'package:miscellaneous_calculator/presentation/view_model/home_screen/real_life_calculator_view_model.dart';
import 'package:provider/provider.dart';

class AreaCalculatorScreen extends StatefulWidget {

  const AreaCalculatorScreen({super.key});

  @override
  State<AreaCalculatorScreen> createState() => _AreaCalculatorScreenState();
}

class _AreaCalculatorScreenState extends State<AreaCalculatorScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController firstController = TextEditingController();

  @override
  void dispose() {
    firstController.dispose();
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
              hintText: '면적을 입력해주세요. (제곱미터)',
              labelText: '면적㎡',
            ),
            keyboardType: TextInputType.number,
            validator: (input) {
              if (input == null || input.isEmpty) {
                return '면적을 입력해주세요.';
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
                '결과 : ${viewModel.state.pyung}평',
                style: const TextStyle(
                  color: Color.fromRGBO(2, 52, 63, 1),
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromRGBO(2, 52, 63, 1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() == null) {
                    return;
                  }
                  final squareMeter = double.parse(firstController.text);
                  viewModel.transferSquareMeter(squareMeter);
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
