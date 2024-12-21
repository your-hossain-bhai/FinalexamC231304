import 'package:flutter/material.dart';

import 'details_screen.dart';



class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsScreen()));
        }
            , child:Text("All good!") ),
      ),
    );
  }
}