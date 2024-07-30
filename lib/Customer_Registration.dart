import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomerRegistration extends StatefulWidget {
   String  title= "Customer Registration Page" ;

  @override
  State<CustomerRegistration> createState() {
    return CustomerRegistrationState();
  }

}

class CustomerRegistrationState extends State<CustomerRegistration> {

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
    // TODO: implement build
  return Scaffold(
    appBar: AppBar(backgroundColor: Colors.black,title: Text(widget.title,style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold)) ,),
    body: Center (
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          SizedBox(height: 20),
          Text("Welcome to the Registration Page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)),


          ///first row for the customer last name and first name.
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //column for the other field
              Container(
                width: 350, // Adjust the width as needed
                padding: const EdgeInsets.all(10.0), // Optional: Add padding
                margin: const EdgeInsets.all(10.0), // Optional: Add margin
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

            ],
          ),

          Row (
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [
              //column for the other field
              Container(
                width: 350, // Adjust the width as needed
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
                  width: 350, // Adjust the width as needed
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
                width: 350, // Adjust the width as needed
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
                width: 350, // Adjust the width as needed
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
                width: 350, // Adjust the width as needed
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
          ElevatedButton(onPressed: registerCustomer , child: Text("Register"))
        ],
      ),

    ),


  );

  }

  void registerCustomer() {

    if(_firstName.value.text ==  ""  || _lastName.value.text == "" || _email.value.text == "" || _phoneNumber.value.text == "" || _birthday.value
        .text == "" || _address.value.text == "" ) {
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Incomplete Registration! '),
          content: const Text('Please Fill out all the fields.'),
          actions: <Widget>[
            ElevatedButton(onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),),
          ],
        ),
      );
    }else {
      var snackBar = SnackBar( content: Text('successfully Registered!', style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18, color: Colors.green),) );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }


}