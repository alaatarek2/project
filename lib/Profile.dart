import 'package:flutter/material.dart';

class Task4 extends StatefulWidget {
  const Task4({Key? key}) : super(key: key);

  @override
  State<Task4> createState() => _TaskState();
}

class _TaskState extends State<Task4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage('Image/blank.jpg'),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                  color: Colors.white70,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "First name",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      hintText: "Alaa",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  )),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                  color: Colors.white70,
                  child: const TextField(
                    decoration: InputDecoration(
                      labelText: "Last name",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      hintText: "Tarek",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.white70,
            child: const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                hintText: "alaatarek@gamil.com",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.white70,
            child: const TextField(
              decoration: InputDecoration(
                labelText: "phone",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                hintText: "+201552159417",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.white70,
            child: const TextField(
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.blue,
          width: double.infinity,
        )

      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Shop',
          ),
        ],
      ),
    );
  }
//
}
