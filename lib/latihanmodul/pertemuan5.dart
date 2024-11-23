import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Halaman Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  'images/kucing-marah.jpg',
                  height: 150,
                  width: 150,
                ),
                Image.asset(
                  'images/meme-kocak-kucing.jpeg',
                  height: 150,
                  width: 150,
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (String value) {},
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: 'Masukkan Nama',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Text('Jenis Kelamin : '),
                Radio(
                  value: 'Laki-Laki',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value.toString();
                    });
                  },
                ),
                const Text('Laki-Laki'),
                Radio(
                  value: 'Perempuan',
                  groupValue: selectedRadio,
                  onChanged: (value) {
                    setState(() {
                      selectedRadio = value.toString();
                    });
                  },
                ),
                const Text('Perempuan'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CheckboxListTile(
              title: const Text('Olahraga'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Seni'),
              value: seni,
              onChanged: (value) {
                setState(() {
                  seni = value!;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            SwitchListTile(
              title: const Text('Lulus'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Kirimkan'),
            )
          ],
        ),
      ),
    );
  }
}
