import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          centerTitle: true,
          titleTextStyle: GoogleFonts.michroma(
            color: const Color.fromARGB(
              255,
              255,
              196,
              0,
            ), // warna teks Study Club
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          backgroundColor: Colors.black, // warna bar
        ),
      ),
      home: const MyHomePage(title: 'Study Club'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    void dialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("berhasil"),
            content: Text("data berhasil di ubah"),
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Container(
          alignment: Alignment.center,
          child: Text(widget.title, style: const TextStyle(fontSize: 20)),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    "Profile",
                    style: GoogleFonts.staatliches(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/aku.jpg'),
                        radius: 80,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black.withOpacity(0.7),
                          ),
                          padding: const EdgeInsets.all(6),
                          child: const Icon(
                            Icons.edit,
                            color: Color.fromARGB(255, 255, 196, 0),
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //-------text pada profil-------//
            SizedBox(height: 20),
            Text(
              "Nama",
              style: GoogleFonts.staatliches(fontSize: 25, color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Juliyando Akbar", style: TextStyle(fontSize: 20)),
                Icon(Icons.edit, color: Colors.grey),
              ],
            ),
            Divider(),

            SizedBox(height: 20),

            Text(
              "Telepon",
              style: GoogleFonts.staatliches(fontSize: 25, color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("08163264933", style: TextStyle(fontSize: 20)),
                Icon(Icons.edit, color: Colors.grey),
              ],
            ),
            Divider(),

            SizedBox(height: 20),

            Text(
              "Tentang",
              style: GoogleFonts.staatliches(fontSize: 25, color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Hanya orang random yang sedang lewat dan melihat",
                    style: TextStyle(fontSize: 20),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Icon(Icons.edit, color: Colors.grey),
              ],
            ),
            Divider(),

            SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  dialog(context);
                },
                child: const Text(
                  "Update Profil",
                  style: TextStyle(color: Color.fromARGB(255, 255, 196, 0)),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: 70,
        color: Color.fromARGB(255, 0, 0, 0),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.home, size: 30, color: Colors.grey),
            Icon(Icons.search, size: 30, color: Colors.grey),
            Icon(
              Icons.person,
              size: 30,
              color: Color.fromARGB(255, 255, 196, 0),
            ),
          ],
        ),
      ),
    );
  }
}
