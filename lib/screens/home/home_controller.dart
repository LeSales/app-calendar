import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeController {
  final selectedDay = ValueNotifier<DateTime>(DateTime.now());
  final selectedMonth = ValueNotifier<CalendarFormat>(CalendarFormat.week);
  final focusedMonth = ValueNotifier<DateTime>(DateTime.now());

  void updateSelectedDay(DateTime newValue) {
    if (selectedDay.value == newValue) {
      return;
    }
    selectedDay.value = newValue;
  }

  void updateMouth() {
    if (selectedMonth.value == CalendarFormat.week) {
      selectedMonth.value = CalendarFormat.month;
    } else {
      selectedMonth.value = CalendarFormat.week;
    }
  }

  void formatMonth(DateTime newDate) {
    focusedMonth.value = newDate;
  }
}
