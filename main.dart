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
  @override
  Widget build(BuildContext context) {
    String email = '';
    String senha = '';

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Página de Login'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Insira seus dados:',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
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
              ElevatedButton(
                onPressed: () {
                  print('o que veio do campo ${email} e campo ${senha}');
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
