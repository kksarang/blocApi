import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

import '../utilites/gradient_button.dart';

class ExampleApi extends StatelessWidget {
  const ExampleApi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff74F1E673),
          elevation: 3,
          titleSpacing: 0,
          centerTitle: false,
          title: const Text(
            "   Emergency Case",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Customer Id',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Site Id',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Supervisor',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'TechId',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'scheduleDate',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Duration',
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Description',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.shade200,
                      width: 7,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: SfDateRangePicker(
                    // initialDisplayDate: DateTime.now(),
                    cancelText: "CANCEL",
                    confirmText: "OK",
                    //  confirmText = 'OK',    cancelText = 'CANCEL',
                    //  onSelectionChanged:,
                    selectionMode: DateRangePickerSelectionMode.range,
                    initialSelectedRange: PickerDateRange(
                        DateTime.now().subtract(const Duration(days: 0)), DateTime.now().add(const Duration(days: 2))),
                  ),
                ),
              ),
              GradientButton(
                isDisabled: false,
                horizontalPadding: 15,
                vertiaclPadding: 15,
                height: 50,
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text(
                      '+ NEW CASES',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}
