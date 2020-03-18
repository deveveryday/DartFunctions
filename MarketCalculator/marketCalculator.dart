import 'dart:io';
import 'package:intl/intl.dart';
import 'cart.dart';
/*
Dart Class
Sample of SuperMarket Cart
Put 3 products in the cart and calculate the price
*/
main(){
	var cartList = <Cart>[];
	var total = 0.0;
	for(var count = 1; count < 4; count++){
		var cart = Cart();
		
		stdout.write("Type the name of product $count: ");
		cart.productName = stdin.readLineSync();
		
		stdout.write("Type the amount of product $count: ");
		cart.amount = double.parse(stdin.readLineSync());
		
		stdout.write('Type the price of product $count: ');
		cart.price = double.parse(stdin.readLineSync());
		
		total += (cart.price * cart.amount);
		cartList.add(cart);
	}
	final fmt = new NumberFormat('#,##.00', 'pt_BR');
	
	stdout.write('----------------------\n');
	DateTime now = DateTime.now();
	String formattedDate = DateFormat('kk:mm').format(now);
	stdout.write('---DevEveryday.net/maluArtSuperMarket -- ${formattedDate}---\n');
	stdout.write('----------------------\n');
	cartList.forEach((c) => stdout.write('Name: ${c.productName.length < 1 ? '(unknown product)' : c.productName} - R\$${c.price}\n'));
	stdout.write('----------------------\n');
	stdout.write('TOTAL: R\$${fmt.parse(total.toString())}');
	stdout.write('\n----------------------');
	

}

