import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: showExitDialog,
        child: const Center(
          child: Text(
            "Olá Pessoal",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Future<bool> showExitDialog() async {
    return await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: const Text(
                "Sair do app",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              content: const Text(
                "Você quer sair desse app ?",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    //if no
                    Navigator.of(context).pop(false);
                  },
                  child: const Text("Não"),
                ),
                ElevatedButton(
                  onPressed: () {
                    //if yes
                    Navigator.of(context).pop(true);
                  },
                  child: const Text("Sim"),
                ),
              ],
            ));
  }
}
