import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 370,
          width: 200,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(3),),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://smuct.ac.bd/wp-content/uploads/2020/10/SMUCT-Logo-1-Converted.png',
                  scale: 5,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          "STUDENT",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700, letterSpacing: 3),
                        ),
                      ),
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.amber,
                        child: CircleAvatar(

                          radius: 45,

                          foregroundImage: NetworkImage('https://scontent.fdac148-1.fna.fbcdn.net/v/t1.6435-9/105562283_2708109382801555_3108929690211434928_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEi61Jt-6aLVG5kalhyAD4CoDIUXXXN21qgMhRddc3bWlhNtkA9GkdEmiBVTuhknLoVMWoJUfyRr_1snjVzyP1L&_nc_ohc=v5SMEPrzCY8AX_ULwMm&_nc_ht=scontent.fdac148-1.fna&oh=00_AfDhG8LnPu3tCqKC6WuTc8HY7aKb85WJU6e8Thw3by-zfg&oe=6544FE3E'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Iftikhar Arefin"),
                    Text(
                      " Student ID: 203072001",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text(
                      "REG.NO.: 200007397",
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                    Text("Dept Of Computer Science & Engineering"),
                    Text(
                      "Blood Group: A+",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.amber,
                thickness: 3,
              ),
              const Text(
                "Registrar",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ],
          ),
        ),
      ),
    );
  }
}