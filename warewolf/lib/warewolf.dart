import 'package:flutter/material.dart';

class WareWolf extends StatefulWidget {
  const WareWolf({Key? key}) : super(key: key);

  @override
  State<WareWolf> createState() => _WareWolfState();
}

class _WareWolfState extends State<WareWolf> {
  final nameCon = TextEditingController();
  final roleCon = TextEditingController();

  submitButton() {
    String nama = nameCon.text;
    String role = roleCon.text;

    if (nama.isNotEmpty && role.isNotEmpty) {
      switch (role) {
        case '1':
          return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('nama kamu $nama role kamu adalah Warewolf'),
          ));
        case '2':
          return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('nama kamu $nama role kamu adalah Penyihir'),
          ));
        case '3':
          return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('nama kamu $nama role kamu adalah Guard'),
          ));
        default:
          return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('nama kamu $nama peran yang kamu pilih tidak ada'),
          ));
      }
    } else if (nama.isNotEmpty && role.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content: Text('Pilih peranmu untuk memulai game'),
      ));
    } else if (nama.isNotEmpty && role.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: Colors.red,
        content: Text('Masukkan namamu untuk memulai game'),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red[700],
        content:
            const Text('Masukan nama dan pilih peran mu untuk memulai game'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffd3d3d3),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 350,
          margin: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Warewolf',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ),
              const Text('Peran\n1.Warewolf\n2.Penyihir\n3.Guard'),
              const SizedBox(
                height: 10,
              ),
              const Text('Masukan nama'),
              TextFormField(
                controller: nameCon,
                cursorColor: Colors.lightBlue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.lightBlue),
                    ),
                    hintText: 'Nama'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Pilih Peran 1-3'),
              TextFormField(
                controller: roleCon,
                keyboardType: TextInputType.number,
                cursorColor: Colors.lightBlue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18),
                      borderSide: const BorderSide(color: Colors.lightBlue),
                    ),
                    hintText: 'Masukan Role'),
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                      onPressed: () {
                        submitButton();
                      },
                      child: const Text('Submit')))
            ],
          ),
        ),
      ),
    );
  }
}
