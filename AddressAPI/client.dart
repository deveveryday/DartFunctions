import 'dart:io';
import 'dart:convert';
import 'address.dart';


void main() {
	stdout.write('Type the CEP: ');
	var address = Address(stdin.readLineSync())
		..performCEPRequest();
	
  	print('API called asynchronous');
}