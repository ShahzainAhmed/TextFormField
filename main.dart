import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("TextForm Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                // enabled: false, // you won't be able to type in the textform field
                keyboardType: TextInputType.emailAddress,
                cursorColor: Colors.deepOrange,
                style: const TextStyle(fontSize: 25, color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.alternate_email_outlined,
                      color: Colors.grey[800]),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: Colors.grey[800],
                  ),
                  filled: true,
                  fillColor: Colors.teal[50],
                  hintText: "shahzainahmed57@gmail.com",
                  labelText: "Email",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey.withOpacity(.7),
                  ),
                  labelStyle: const TextStyle(color: Colors.blue),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.teal,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.teal,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onChanged: (value) {
                  debugPrint(value); // record the text in email box
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
