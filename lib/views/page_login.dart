import 'package:flutter/material.dart';
import 'package:polo/views/home_page.dart';

class PageLogin extends StatelessWidget {
  const PageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/fundo.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
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
                  hintText: 'Usuario...',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
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
                  hintText: 'Senha...',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(100, 45)),
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(10)),
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xff3072B3),
                      ),
                      //padding: EdgeInsetsGeometry
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const HomePage();
                        }),
                      );
                    },
                    child: const Text(
                      'Logar',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 130,
                child: Card(
                  elevation: 0,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Color(0xff276f86)),
                  ),
                  color: const Color(0xffF8FFFF),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text(
                          'Você não tem login no POLO ainda?',
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '• Entre em contato conosco através do nosso e-mail: polo@conder.ba.gov.br',
                          style: TextStyle(color: Colors.blue.shade400),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
