import 'package:flutter/material.dart';
import 'package:todolist/car_entity.dart';
import 'package:todolist/widgets/elevated_button_custom.dart';
import 'package:todolist/widgets/textfield_custom.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  final List<CarEntity> lista = [];
  final TextEditingController marca = TextEditingController();
  final TextEditingController modelo = TextEditingController();
  final TextEditingController ano = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Meus carros',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            TextFieldCustom(
              controller: marca,
              labelText: 'Marca',
            ),
            const SizedBox(
              height: 13,
            ),
            TextFieldCustom(
              controller: modelo,
              labelText: 'Modelo',
            ),
            const SizedBox(
              height: 13,
            ),
            TextFieldCustom(
              controller: ano,
              labelText: 'Ano',
            ),
            const SizedBox(
              height: 13,
            ),
            ElevatedButtonCustom(
              child: const Text('Adicionar'),
              onPressed: () {
                lista.add(CarEntity(marca.text, modelo.text, ano.text));
                setState(() {});
              },
            ),
            const SizedBox(
              height: 13,
            ),
            ListView.builder(
                itemCount: lista.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final item = lista[index];
                  return Card(
                    color: Color.fromARGB(255, 240, 237, 247),
                    child: ListTile(
                      title: Text(item.modelo),
                      subtitle: Text(item.marca),
                      leading: IconButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/information', arguments: item);
                          },
                          icon: const Icon(
                            Icons.info,
                          )),
                      trailing: IconButton(
                        onPressed: () {
                          lista.remove(item);
                          setState(() {});
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
