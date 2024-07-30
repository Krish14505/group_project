import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Customer Registration Page'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 //variables should be defined here.

  ///declare all the variables used in the textfield.
  late TextEditingController _firstName;
  late TextEditingController _lastName;
  late TextEditingController _email;
  late TextEditingController _phoneNumber;
  late TextEditingController _address;
  late TextEditingController _birthday;

  @override
  void initState() {
    super.initState(); // initialize all the late variables .
    _firstName = TextEditingController();
    _lastName = TextEditingController();
    _email = TextEditingController();
    _phoneNumber = TextEditingController();
    _address = TextEditingController();
    _birthday = TextEditingController();
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _phoneNumber.dispose();
    _address.dispose();
    _birthday.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

              SizedBox(height: 20),
              Text("Welcome to the Registration Page",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),
              SizedBox(height: 20),

            ///first row for the customer last name and first name.
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //column for the other field
                Container(
                  width: 400, // Adjust the width as needed
                  padding: const EdgeInsets.all(10.0), // Optional: Add padding
                  margin: const EdgeInsets.all(20.0), // Optional: Add margin
                  decoration: BoxDecoration(
                    color: Colors.white, // Optional: Add background color
                    borderRadius: BorderRadius.circular(10.0), // Optional: Add border radius

                  ),
                  child: TextField(controller: _firstName,
                      decoration: InputDecoration(
                          hintText:"Enter  First Name",
                          border: OutlineInputBorder(),
                          labelText: "First Name"
                      )),
                ),

                //column for the other field
                Container(
                  width: 400, // Adjust the width as needed
                  padding: const EdgeInsets.all(10.0), // Optional: Add padding
                  margin: const EdgeInsets.all(10.0), // Optional: Add margin
                  decoration: BoxDecoration(
                    color: Colors.white, // Optional: Add background color
                    borderRadius: BorderRadius.circular(10.0), // Optional: Add border radius

                  ),
                  child: TextField(controller: _lastName,
                      decoration: InputDecoration(
                          hintText:"Enter Last Name",
                          border: OutlineInputBorder(),
                          labelText: "Last Name"
                      )),
                ),

              ],
            ),


            Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
            //column for the other field
            Container(
              width: 600, // Adjust the width as needed
              padding: const EdgeInsets.all(10.0), // Optional: Add padding
              margin: const EdgeInsets.all(10.0), // Optional: Add margin
              decoration: BoxDecoration(
                color: Colors.white, // Optional: Add background color
                borderRadius: BorderRadius.circular(10.0), // Optional: Add border radius

              ),
              child: TextField(controller: _birthday,
                  decoration: InputDecoration(
                      hintText:"Enter Date Of Birth",
                      border: OutlineInputBorder(),
                      labelText: "BirthDate"
                  )),
            ),
           ] ),
            //Row for the Phone Number
            Row (
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [
            Container(
              width: 600, // Adjust the width as needed
              padding: const EdgeInsets.all(10.0), // Optional: Add padding
              margin: const EdgeInsets.all(10.0), // Optional: Add margin
              decoration: BoxDecoration(
                color: Colors.white, // Optional: Add background color
                borderRadius: BorderRadius.circular(10.0), // Optional: Add border radius

              ),
              child: TextField(controller: _email,
                  decoration: InputDecoration(
                      hintText:"Enter Your Email address",
                      border: OutlineInputBorder(),
                      labelText: "Email"
                  )),
            ),

            ],),

            //Row for the Phone Number
            Row (
              mainAxisAlignment:  MainAxisAlignment.start,
              children: [
                Container(
                  width: 600, // Adjust the width as needed
                  padding: const EdgeInsets.all(10.0), // Optional: Add padding
                  margin: const EdgeInsets.all(10.0), // Optional: Add margin
                  decoration: BoxDecoration(
                    color: Colors.white, // Optional: Add background color
                    borderRadius: BorderRadius.circular(10.0), // Optional: Add border radius

                  ),
                  child: TextField(controller: _phoneNumber,
                      decoration: InputDecoration(
                          hintText:"Enter phone number ",
                          border: OutlineInputBorder(),
                          labelText: "PhoneNumber"
                      )),
                ),

              ],),
//Row for the Phone Number
            Row (
              mainAxisAlignment:  MainAxisAlignment.start,
              children: [
                Container(
                  width: 600, // Adjust the width as needed
                  padding: const EdgeInsets.all(10.0), // Optional: Add padding
                  margin: const EdgeInsets.all(10.0), // Optional: Add margin
                  decoration: BoxDecoration(
                    color: Colors.white, // Optional: Add background color
                    borderRadius: BorderRadius.circular(10.0), // Optional: Add border radius

                  ),
                  child: TextField(controller: _address,
                      decoration: InputDecoration(
                          hintText:"Enter Your Address",
                          border: OutlineInputBorder(),
                          labelText: "Address:"
                      )),
                ),
              ],),

            //creating Register button to register the user as the customer
            ElevatedButton(onPressed: (){ } , child: Text("Register"))
          ],
        ),
      ),
    );
  }
}
