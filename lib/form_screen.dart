import 'package:flutter/material.dart';

import 'list_screen.dart';


class FormScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController contractController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Screen')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "name"),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: "email"),
            ),
            TextField(
              controller: contractController,
              decoration: InputDecoration(labelText: "contract"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ListScreen(
                  data: [
                    {
                      'name': nameController.text,
                      'email': emailController.text,
                      'contract': contractController.text,
                    }
                  ],
                )));
              },
              child: Text("Save"),
            ),
          ],
        ),
      ),
    );
  }
}