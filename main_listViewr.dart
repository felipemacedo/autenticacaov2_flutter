import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> listaProdutos = []; //uma lista vazia

    //for para criar a lista
    for (var i = 0; i < 20; i++) {
      listaProdutos.add('Prod.${i}');
    }

    //List<String> listaProdutos = List<String>.generate(3, (i) => 'Produto ${i}');//uma forma mais rapida de criar lista

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Produtos'),
        ),
        body: Center(
          child: ListView.builder(
            //reverse: false,//ordena em orde decrescente se true
            itemCount: listaProdutos.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('item: ${listaProdutos[index]}'),
                onTap: () {
                  print('Voce selecionou o ${index}');
                  print('o nome do produuto o ${listaProdutos[index]}');
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
