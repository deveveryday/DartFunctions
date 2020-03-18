import 'dart:io';
import 'package:intl/intl.dart';

NumberFormat get fmt => NumberFormat('#,##0.00', 'pt_BR');

String leTexto(String mensagem) {
	stdout.write('$mensagem: ');
	return stdin.readLineSync();
}

String readText(String message){
	stdout.write('$message: ');
	return stdin.readLineSync();
}

double leDecimal(mensagem) => fmt.parse(leTexto(mensagem));

int leInteiro(mensagem) => int.parse(leTexto(mensagem));