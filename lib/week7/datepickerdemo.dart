import 'package:flutter/material.dart';


class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({super.key});


  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}


class _DatePickerDemoState extends State<DatePickerDemo> {
  String _date = '';


  void selectDate() async {
    DateTime? dt = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year, 1, 1),
      lastDate: DateTime(DateTime.now().year, 12, 31),
    );


    if (dt != null) {
      setState(() {
        _date = '${dt.day}/${dt.month}/${dt.year}';
        // _date = dt.toString();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DatePicker Demo')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(_date),
            FilledButton.icon(
              onPressed: selectDate,
              icon: const Icon(Icons.calendar_today),
              label: const Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}
