import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AtualizarSenhaPage(),
    );
  }
}

class AtualizarSenhaPage extends StatefulWidget {
  @override
  _AtualizarSenhaPageState createState() => _AtualizarSenhaPageState();
}

class _AtualizarSenhaPageState extends State<AtualizarSenhaPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _novaSenhaController = TextEditingController();
  bool TextoOculto = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atualizar senha'),
        backgroundColor: Color.fromARGB(255, 255, 159, 134),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white, // Cor de fundo do TextField
                  suffixIcon: Icon(Icons.email_outlined),
                  hintText: 'E-mail',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _novaSenhaController,
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white, // Cor de fundo do TextField
                suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      TextoOculto = !TextoOculto;
                    });
                  },
                  child: Icon(
                      TextoOculto ? Icons.visibility_off : Icons.visibility),
                ),
                hintText: 'Senha',
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Borda redonda do TextField
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text;
                String novaSenha = _novaSenhaController.text;
                if (email.isNotEmpty && novaSenha.isNotEmpty) {
                  print('E-mail: $email, Nova Senha: $novaSenha');
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Senha atualizada com sucesso!'),
                    ),
                  );
                } else {
                  // Mensagem de erro se algum campo estiver vazio
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Erro!'),
                        content: Text('Preencha todos os campos.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 159, 134), // Cor do botão
              ),
              child: Text('Atualizar Senha',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
