import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  TextEditingController dateinput = TextEditingController();
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DatePicker on TextField"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: 150,
        child: Center(
          child: TextField(
            controller: dateinput,
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              labelText: "Enter Date",
            ),
            readOnly: true,
            onTap: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101),
              );

              if (pickedDate != null) {
                print(pickedDate);
                String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                print(formattedDate);

                setState(() {
                  dateinput.text = formattedDate;
                });
              } else {
                print("Date is not selected");
              }
            },
          ),
        ),
      ),
    );
  }
}

DateFormat(String s) {}
