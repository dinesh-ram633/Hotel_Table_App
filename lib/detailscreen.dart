import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel_table/login.dart';
import 'package:hotel_table/payment.dart';
import 'package:intl/intl.dart';
import 'package:numberpicker/numberpicker.dart';


class ReservationPage extends StatefulWidget {
  const ReservationPage({super.key});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {

DateTime _PickedDate = DateTime.now();
TimeOfDay _PickedTime = TimeOfDay.now();

String get getDate{
  return DateFormat("dd-MM-yyyy").format(_PickedDate);
}

String get getTime {
  final now = DateTime.now();
  final datetime = DateTime(now.year, now.month, now.day,
   _PickedTime.hour, _PickedTime.minute);
   return DateFormat("hh:mm a").format(datetime);

}

  int currentvalue = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar:  AppBar(
      backgroundColor: Colors.yellow,
      foregroundColor: Colors.black,
      centerTitle: true,
           title: Text("Booking ",
      style: TextStyle(color: Colors.black,
      fontSize: 23,
      fontWeight: FontWeight.bold
      )),
    ),
    body: Padding(
      padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            Text("Select Persons",
                style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 10),
            Container(
              child: NumberPicker(
                axis: Axis.horizontal,
                itemHeight: 45,
                itemWidth: 45,
                minValue: 0, 
                maxValue: 50,
                itemCount: 4, 
                value: currentvalue, 
                onChanged: (v) {
                  setState(() {
                    currentvalue = v;
                  });
                },),
            ),
            
                SizedBox(
                  height: 10),
                Text("Date of Booking",
                style: TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
                  height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: MaterialButton(
                        color: Colors.blue,
                        onPressed: () => openDaterPicker(),
                        child: Text("Select Date",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                        ),)),
                    ),
                      SizedBox(
                        width: 20),
                      Text("Picked Date - $getDate",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                        ),),
                  ],),
                SizedBox(
                  height: 10),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: MaterialButton(
                        color: Colors.blue,
                        onPressed: () => openTimePicker(),
                        child: Text("Select Time",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18
                        ),)),
                    ),
                      SizedBox(
                        width: 20),
                      Text("Picked Time - $getTime ",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                        ),),
                  ],),
                   SizedBox(
                  height: 10),
                  MaterialButton(
                    height: 40,
                    minWidth: 150,
                    color: Colors.blue,
                    child: Text("Book",
                    style: TextStyle(
                      fontSize: 25
                    ),),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PaymentPage(),));
                    },)
                ],
        ),
      ),
    ),
   );
  }

  Future <void> openDaterPicker() async{
    final PickedDate = await showDatePicker(
      context: context, 
      initialDate: _PickedDate, 
      firstDate: DateTime.now(), 
      lastDate: DateTime(2025, 01, 05));
      if (PickedDate != null){
        setState(() {
          _PickedDate = PickedDate;
        });}
  }

  Future <void> openTimePicker() async{
    final PickedTime = await showTimePicker(
      context: context, 
       initialTime: _PickedTime,
       );
      if (PickedTime != null){
        setState(() {
          _PickedTime = PickedTime;
        }); }
  }

}

