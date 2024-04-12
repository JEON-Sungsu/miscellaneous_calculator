import 'package:flutter/material.dart';

class AccordionItem {
  String headerValue;
  bool isExpanded = false;
  Widget child;

  AccordionItem({
    required this.headerValue,
    required this.child
  });
}