import 'package:flutter/material.dart';

class MedicineForm extends StatefulWidget {
  const MedicineForm({super.key});

  @override
  State<MedicineForm> createState() => _MedicineFormState();
}

class _MedicineFormState extends State<MedicineForm> {
  TextEditingController mName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const Text(
              'Medicine',
              style: TextStyle(
                color: Colors.black,
                backgroundColor: Color.fromRGBO(217, 217, 217, 10),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autofocus: false,
                      style: TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                        labelText: 'Enter Name of medicine',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(),
                  const SizedBox(height: 10),
                  TextFormField(),
                  const SizedBox(height: 10),
                  const Text('Compartments'),
                  ListView(
                    children: [
                      Container(
                        height: 80.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(10, (int index) {
                            return Card(
                              color: Colors.blue[index * 100],
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                child: Text("$index"),
                              ),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
