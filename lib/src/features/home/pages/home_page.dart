import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.grey,
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height / 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          color: Colors.blueAccent,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Card(
                            child: ListTile(
                              title: const Text('Adicionar'),
                              subtitle: const Text('produto'),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.blueAccent,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Card(
                            child: ListTile(
                              title: const Text('Listar'),
                              subtitle: const Text('produto'),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.blueAccent,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Card(
                            child: ListTile(
                              title: const Text('Editar'),
                              subtitle: const Text('produto'),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        ),
                        Container(
                          color: Colors.blueAccent,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: Card(
                            child: ListTile(
                              title: const Text('Remover'),
                              subtitle: const Text('produto'),
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
