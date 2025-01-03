import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My Profile'),
        ),
        body: const ProfilePage(),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/profile.jpg'),
          ),
          const SizedBox(height: 20),
          Text('Nadya Noermala Nona Pradipta',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(
              'Saya Nadya mahasiswa Teknik Informatika.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.cake),
                  title: Text('Tanggal Lahir'),
                  subtitle: Text('3 Juni 2002'),
                ),
                const ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email'),
                  subtitle: Text('nonanadya2002@gmail.com'),
                ),
                const ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text('Alamat'),
                  subtitle: Text('Manggisan, Mojotengah, Wonosobo'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Edukasi'),
                  subtitle: Text('Teknik Informatika - UNSIQ\nIPS - SMA Negeri Mojotengah'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Pengalaman Kerja'),
                  subtitle: Text(
                      '1. Freelance Web Design (2023 - Sekarang)'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            elevation: 4.0,
            child: Column(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text('Hobi'),
                  subtitle: Text('1. Menonton Film\n2. Mendengarkan Musik'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}