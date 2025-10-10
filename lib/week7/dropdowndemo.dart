import 'package:flutter/material.dart';


class DropdownDemo extends StatefulWidget {
  const DropdownDemo({super.key});


  @override
  State<DropdownDemo> createState() => _DropdownDemoState();
}


class _DropdownDemoState extends State<DropdownDemo> {
  String _ddvalue = 'all';
  List<String> years = ['all', '2025', '2024'];


  List<DropdownMenuItem<String>> createDropdown() {
    return years
        .map(
          (year) => DropdownMenuItem(
            value: year,
            child: Text(year),
          ),
        )
        .toList();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown button'),
      ),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
              value: _ddvalue,
              items: createDropdown(),
              onChanged: (String? newvalue) {
                setState(() {
                  _ddvalue = newvalue!;
                });
              },
            ),
            const SizedBox(height: 16),
            Text('You select $_ddvalue'),
          ],
        ),
      ),
    );
  }
}
