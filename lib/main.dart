import 'package:flutter/material.dart';
import 'package:nriit_nss/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NRIIT-NSS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.redAccent.shade700,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.redAccent.shade700,
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'NRIIT NSS',
                style: TextStyle(
                  color: Color.fromARGB(255, 242, 242, 242),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  // Profile picture display and functionality
                  GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ProfilePage())),
                      child: profilePic(
                        context,
                        radius: 40,
                        visible: false,
                      )),

                  //Name of the person logged in
                  const Text(
                    'P. Naga Siva Sai Teja',
                    style: TextStyle(
                      color: Color.fromARGB(255, 242, 242, 242),
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),

                  //admin Badge displayed for admins only
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Badge(
                      label: Text('Admin'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
