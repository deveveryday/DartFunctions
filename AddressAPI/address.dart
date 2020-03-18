import 'dart:io';
import 'dart:convert';

class Address {
  String cep;
  String logradouro;
  String complemento;
  String bairro;
  String localidade;
  String uf;
  String unidade;
  String ibge;
  String gie;

  Address(this.cep) {}

  Address.fromJson(Map<String, dynamic> json) : logradouro = json['logradouro'];

  /// Make a HTTP request to get address for a CEP given
  void performCEPRequest() async {
    //var address = new Address();
    var request = await HttpClient()
        .getUrl(Uri.parse('https://viacep.com.br/ws/${cep}/json/'));
    var response = await request.close();

    print('The JSON of your address is:');
    await for (var contents in response.transform(Utf8Decoder())) {
      print(contents);
      jsonReturned += contents;
    }
    ;
  }
}
