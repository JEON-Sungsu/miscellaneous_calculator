import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:miscellaneous_calculator/data/model/accordion_item.dart';
import 'package:miscellaneous_calculator/presentation/calculators/area_calculator_screen.dart';
import 'package:miscellaneous_calculator/presentation/calculators/bmi_calculator_screen.dart';
import 'package:miscellaneous_calculator/presentation/view_model/home_screen/real_life_calculator_view_model.dart';
import 'package:provider/provider.dart';

class RealLifeAccordionList extends StatefulWidget {
  const RealLifeAccordionList({super.key});

  @override
  State<RealLifeAccordionList> createState() => _RealLifeAccordionListState();
}

class _RealLifeAccordionListState extends State<RealLifeAccordionList> {
  List<AccordionItem> itemList = [
    AccordionItem(
      headerValue: '비만도 계산기',
      child: ChangeNotifierProvider(
        create: (_) => RealLifeCalculatorViewModel(),
        child: const BMICalculatorScreen(),
      ),
    ),
    AccordionItem(
      headerValue: '면적 계산기 (제곱미터 -> 평)',
      child: ChangeNotifierProvider(
        create: (_) => RealLifeCalculatorViewModel(),
        child: const AreaCalculatorScreen(),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 12, 0, 16),
            child: Text(
              '실생활편',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(2, 52, 63, 1),
              ),
            ),
          ),
          ExpansionPanelList(
            expandedHeaderPadding: const EdgeInsets.all(10.0),
            materialGapSize: 12,
            dividerColor: Colors.indigo,
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                itemList[index].isExpanded = isExpanded;
              });
            },
            children: itemList.map((e) {
              return ExpansionPanel(
                canTapOnHeader: true,
                backgroundColor: Colors.white,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      e.headerValue,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  );
                },
                body: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: e.child,
                ),
                isExpanded: e.isExpanded,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}