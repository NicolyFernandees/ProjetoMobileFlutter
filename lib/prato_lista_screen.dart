import 'package:flutter/material.dart';
import 'package:flutter_restaurante/prato_model.dart';
import 'package:flutter_restaurante/prato_repository.dart';

class PratoListaScreen extends StatefulWidget {
  const PratoListaScreen({super.key});

  @override
  State<PratoListaScreen> createState() => _PratoListaScreenState();
}

class _PratoListaScreenState extends State<PratoListaScreen> {
  List<Prato> pratos = [];

  @override
  void initState() {
    super.initState();

    PratoRepository().get().then(
      (result) => setState(() {
        pratos = result;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.yellow,
        title: Center(child: Text("Listagem de Pratos")),
      ),
      body: Column(
        children: pratos
            .map(
              (prato) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 140,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Id: ${prato.id}"),
                      Text("Nome: ${prato.nome}"),
                      Text("Descrição: ${prato.descricao}"),
                      Text("Preço: ${prato.preco}"),
                      Text("Tempo de Preparo: ${prato.minutos}"),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}




/*comi o cu de quem leu */ 
