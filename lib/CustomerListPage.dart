import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:group_project/Customer.dart';
import 'package:group_project/CustomerDAO.dart';

import 'CustomerDatabase.dart';

/**
 * This customer list page has two pages: first on the left-hand side it has all the customer
 * that are in the database and on the right-hand side the customer information page in the form view with two
 * buttons 1)update(saves the data) 2)delete(delete the customer from the database)
 */
class CustomerListPage extends StatefulWidget {
  String title = "Customer List Page";

  @override
  State<CustomerListPage> createState() {
    return CustomerListPageState();
  }
}

class CustomerListPageState extends State<CustomerListPage> {
  //variables defined
  late CustomerDAO customerdao ;
  Customer ? selectedCustomer;

  List<Customer> customerLists = [];
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

    //creating the database connection
    $FloorCustomerDatabase.databaseBuilder("app_database.db").build().then((database) {
      customerdao = database.getCustomerDAO; // instantiate the database object

      //fetch the customer from the customerList and put all into the database
      customerdao.getAllCustomers().then((ListOfCustomers) {
        customerLists.addAll(ListOfCustomers); // when loading the page , all the existing customer should be in the list.

      });

    });
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
        backgroundColor: Colors.cyan,
        title: Text(widget.title,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      body: responsiveLayout(),
    );
  }

  //the widget to return the based on the device mode.
 Widget responsiveLayout() {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;

    //condition to check the mode of the device
    //if the width is greater than 720 and height,then it's in landscape mode
    //if not,then it is in potrait mode

   if(width > height && width > 720){
     return Row (
       children: [
         Expanded(flex: 2 , child:ListPage()),
         Expanded(flex:3, child: customerDetailsWithForm()),
       ],
     );
   }else { //potrait mode
      if(selectedCustomer == null) {
        return ListPage();
      }else {
        return customerDetailsWithForm();
      }
   }
 }



 //List page that has all the customer from the database
Widget ListPage(){
    return Center(
      child: Column(

      ),
    );
}


//customerDetailsWithForm() that has values of the customer
Widget customerDetailsWithForm() {
    return Text(" ");
}
} //end of CustomerListPageState class
