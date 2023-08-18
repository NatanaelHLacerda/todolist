import 'package:flutter/material.dart';
import 'package:todolist/car_entity.dart';

class InformationView extends StatefulWidget {
  const InformationView({super.key});

  @override
  State<InformationView> createState() => _InformationViewState();
}

class _InformationViewState extends State<InformationView> {
  @override
  Widget build(BuildContext context) {
    CarEntity car = ModalRoute.of(context)?.settings.arguments as CarEntity;

    return Scaffold(
      appBar: AppBar(
        title: Text(car.modelo),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: Color.fromARGB(255, 226, 220, 245),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Marca: ${car.marca}'),
                    Text('Modelo: ${car.modelo}'),
                    Text('Ano: ${car.ano}'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
