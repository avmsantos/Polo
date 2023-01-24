import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/fundo.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.all(28),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Usuario',
                style: TextStyle(fontSize: 20, height: 3),
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Usuario...',
              ),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Senha',
                style: TextStyle(fontSize: 20, height: 3),
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha...',
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(100, 45)),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xff3072B3),
                    ),
                    //padding: EdgeInsetsGeometry
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Logar',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
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
