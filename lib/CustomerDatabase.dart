import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'Customer.dart';
import 'CustomerDAO.dart';

@Database(version: 1, entities:[Customer])
abstract class CustomerDatabase extends FloorDatabase {

  //get the interface ready to database
  CustomerDAO get getCustomerDAO; // function to establish the connection.

}