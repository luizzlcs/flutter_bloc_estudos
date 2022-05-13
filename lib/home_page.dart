import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Image(
                width: 150.0,
                height: 150.0,
                image: NetworkImage(
                  'https://raw.githubusercontent.com/felangel/bloc/master/docs/assets/bloc_logo_full.png',
                ),
              ),
              const SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/bloc');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 89, 61, 107),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      'Bloc',
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/cubit');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 89, 61, 107),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: const Text(
                      'Cubit',
                      style: TextStyle(fontSize: 26, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
