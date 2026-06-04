import 'package:flutter/material.dart';

class PratoCadastroScreen extends StatefulWidget {
  const PratoCadastroScreen({super.key});

  @override
  State<PratoCadastroScreen> createState() => _PratoCadastroScreenState();
}

class _PratoCadastroScreenState extends State<PratoCadastroScreen> {
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtDescricao = TextEditingController();
  TextEditingController txtpreco = TextEditingController();
  TextEditingController txtTempoPreparo = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.amber,
        backgroundColor: Colors.red,
        title: Center(child: Text("Cadastrar Prato")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Nome",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Descrição",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Preço",
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Tempo de Preparo",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.red,
                foregroundColor: Colors.amber,
                onPressed: () {},
                child: Text("Salvar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
