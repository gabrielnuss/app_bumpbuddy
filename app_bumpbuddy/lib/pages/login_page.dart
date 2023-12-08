import 'package:app_bumpbuddy/pages/atualizar_senha_page.dart';
import 'package:app_bumpbuddy/pages/cadastro_page.dart';
import 'package:app_bumpbuddy/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool TextoOculto = true;

  void _handleLogin() {
    String email = _emailController.text;
    String password = _passwordController.text;

    // Imprime os valores no console
    print('E-mail: $email');
    print('Senha: $password');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      flex: 4,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 45), //Posicionamento de imagem
                            child: ClipOval(
                              child: Image.asset(
                                "lib/assets/images/bump_buddy.png",
                                width: 150.0,
                                height: 150.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: double.infinity,
                            //margin: EdgeInsets.symmetric(horizontal: 70),
                            child: TextField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    Colors.white, // Cor de fundo do TextField
                                suffixIcon: Icon(Icons.email_outlined),
                                hintText: 'E-mail',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ), // Borda redonda do TextField
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(20),
                            width: double.infinity,
                            // margin: EdgeInsets.symmetric(horizontal: 50),
                            child: TextField(
                              controller: _passwordController,
                              obscureText: TextoOculto,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor:
                                    Colors.white, // Cor de fundo do TextField
                                suffixIcon: InkWell(
                                  onTap: () {
                                    setState(() {
                                      TextoOculto = !TextoOculto;
                                    });
                                  },
                                  child: Icon(TextoOculto
                                      ? Icons.visibility_off
                                      : Icons.visibility),
                                ),
                                hintText: 'Senha',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Borda redonda do TextField
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: ((context) =>
                                              MyHomePage())));
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(
                                      255, 255, 159, 134), // Cor do botão
                                ),
                                child: Text('Entrar',
                                    style: TextStyle(color: Colors.white))),
                          ),
                        ],
                      )),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter, //Posição do botão
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => CadastroPage())));
                          },
                          child: Text(
                            'Cadastrar-se',
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 159, 134),
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter, //Posição do botão
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        AtualizarSenhaPage())));
                          },
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Color.fromARGB(255, 255, 159, 134)),
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
