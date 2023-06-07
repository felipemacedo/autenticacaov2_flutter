import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String email = '';
  String senha = '';
  bool aceiteTermos = false;
  bool termoLgpd = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Insira seus dados'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'E-mail'),
                onChanged: (text) {
                  if (text.contains('@')) {
                    print('email valido');
                  } else {
                    print('email INVALIDO');
                  }
                  email = text;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Senha'),
                onChanged: (text) {
                  senha = text;
                },
                obscureText: true,
              ),
              Row(
                children: [
                  Checkbox(
                      value: aceiteTermos,
                      onChanged: (checked) {
                        print(checked);
                        setState(() {
                          aceiteTermos = !aceiteTermos;
                        });
                      }),
                  Text('Concordo com os termos de uso do app'),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: termoLgpd,
                      onChanged: (checked) {
                        print('termo lgpd ${checked}');
                        setState(() {
                          termoLgpd = !termoLgpd;
                        });
                      }),
                  Text('Aceita termo LGPD?'),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  print('o que veio do campo ${email} e campo ${senha}');
                  print('Aceitou termos ${aceiteTermos}');
                },
                child: Text('Entrar'),
              ),
              const Text(
                'Esqueceu sua senha?',
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
