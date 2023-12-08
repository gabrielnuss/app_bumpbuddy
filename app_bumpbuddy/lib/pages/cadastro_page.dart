import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CadastroPage(),
    );
  }
}

class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _senhaController = TextEditingController();
  TextEditingController _nomeController = TextEditingController();
  TextEditingController _dataNascimentoController = TextEditingController();
  TextEditingController _dataInicioGravidezController = TextEditingController();

  Future<void> _selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime currentDate = DateTime.now();
    DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: currentDate,
      firstDate: DateTime(1900),
      lastDate: currentDate,
    );

    if (selectedDate != null && selectedDate != currentDate) {
      setState(() {
        controller.text = DateFormat('dd/MM/yyyy').format(selectedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
        backgroundColor: Color.fromARGB(255, 255, 159, 134),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nomeController,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _dataNascimentoController,
              readOnly: true,
              onTap: () => _selectDate(context, _dataNascimentoController),
              decoration: InputDecoration(
                labelText: 'Data de nascimento',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _dataInicioGravidezController,
              readOnly: true,
              onTap: () => _selectDate(context, _dataInicioGravidezController),
              decoration: InputDecoration(
                labelText: 'Data de início da gravidez',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _senhaController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                String nome = _nomeController.text;
                String dataNascimento = _dataNascimentoController.text;
                String dataInicioGravidez = _dataInicioGravidezController.text;
                String email = _emailController.text;
                String senha = _senhaController.text;

                if (nome.isNotEmpty &&
                    dataNascimento.isNotEmpty &&
                    dataInicioGravidez.isNotEmpty &&
                    email.isNotEmpty &&
                    senha.isNotEmpty) {
                  print('Nome: $nome, Data de nascimento: $dataNascimento, '
                      'Data de início de Gravidez: $dataInicioGravidez, '
                      'E-mail: $email, Senha: $senha');
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
              child:
                  Text('Cadastrar-se', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
