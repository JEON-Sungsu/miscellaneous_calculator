import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:miscellaneous_calculator/presentation/components/common/slider_view.dart';
import 'package:miscellaneous_calculator/presentation/components/real_life_list/real_life_accordian_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<SliderDrawerState> _sliderDrawerKey =
      GlobalKey<SliderDrawerState>();

  int _currentPage = 0;

  final List<Widget> page = [const RealLifeAccordionList()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SliderDrawer(
          sliderOpenSize: 180,
          key: _sliderDrawerKey,
          appBar: const SliderAppBar(
            appBarPadding: EdgeInsets.zero,
            appBarColor: Color.fromRGBO(240, 237, 204, 1),
            title: Text(
              '잡학 계산기',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 24,
                color: Color.fromRGBO(2, 52, 63, 1),
              ),
            ),
          ),
          slider: SliderView(
            onItemClick: (title, pageId) {
              _sliderDrawerKey.currentState!.closeSlider();
              setState(() {
                _currentPage = pageId;
              });
            },
          ),
          child: page[_currentPage],
        ),
      ),
    );
  }
}
