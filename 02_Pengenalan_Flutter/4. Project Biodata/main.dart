import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Biodata App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biodata'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile.jpg'), // Ganti dengan path gambar
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                'Ade Fatkhul Anam',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Text(
                'Software Engineer',
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Colors.grey,
                    ),
              ),
            ),
            const Divider(height: 40, thickness: 2),
            const Text(
              'About Me',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'I am a passionate software engineer with experience in developing mobile and web applications. '
              'I enjoy creating clean, user-friendly designs and solving complex problems.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Text(
              'Experience',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            experienceItem('Software Engineer', 'Barack Studio', '2022 - Present'),
            experienceItem('Graphic Designer', 'Barack Studio', '2020 - Present'),
            experienceItem('Intern', 'Google DSC Tel-U Pwt', '2022 - 2023'),
            const SizedBox(height: 20),
            const Text(
              'Skills',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            skillsItem(['Flutter', 'Dart', 'JavaScript', 'React', 'Node.js', 'Graphic Design', 'Photography']),
            const SizedBox(height: 20),
            const Text(
              'Organization',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            organizationItem('Lead Creatives & Graphics', 'AWS Cloud Club', '2024 - Now'),
            organizationItem('Lead Media & Information', 'HMSE Tel-U Pwt', '2024 - Now'),
            organizationItem('Staff Media & Creative', 'Google DSC Tel-U Pwt', '2023 - Now'),
            const SizedBox(height: 20),
            const Text(
              'Contact',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.email, color: Colors.blueGrey),
                SizedBox(width: 10),
                Text('ade.falnam@gmail.com'),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: const [
                Icon(Icons.phone, color: Colors.blueGrey),
                SizedBox(width: 10),
                Text('+62 858 7000 6453'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to create experience item widget
  Widget experienceItem(String position, String company, String duration) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            company,
            style: const TextStyle(color: Colors.grey),
          ),
          Text(
            duration,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }

  // Function to create skills widget
  Widget skillsItem(List<String> skills) {
    return Wrap(
      spacing: 10.0,
      runSpacing: 10.0,
      children: skills.map((skill) {
        return Chip(
          label: Text(skill),
          backgroundColor: Colors.blueGrey.shade100,
        );
      }).toList(),
    );
  }

  // Function to create organization item widget
  Widget organizationItem(String position, String organization, String duration) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            position,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            organization,
            style: const TextStyle(color: Colors.grey),
          ),
          Text(
            duration,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
