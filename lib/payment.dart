import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel_table/home.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:300),
          child: Column(
            children: [
              Icon(Icons.thumb_up,size: 100,),
              Text("Successfully Booked",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ElevatedButton(onPressed: (() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home(),));
              }), child:Text("Back To Home"))
            ],
          ),
        ),
      ),
    );
  }
}