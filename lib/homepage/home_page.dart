import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login',
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Login',
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Logar'),
            ),
            Card(
              elevation: 0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(color: Colors.black),
              ),
              color: const Color(0xffF8FFFF),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: const [
                  ListTile(
                    title: Text('Você não tem login no POLO ainda?'),
                  ),
                  Text(
                      '• Entre em contato conosco através do nosso e-mail: polo@conder.ba.gov.br'),
                  Text(
                      '• Cessão de Uso fornecida pela Companhia de Desenvolvimento Urbano do Estado da Bahia')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
