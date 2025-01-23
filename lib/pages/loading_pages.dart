import 'package:flutter/material.dart';
import 'package:project_saeful/pages/list_siswa_pages.dart';

class LoadingPages extends StatefulWidget {
  const LoadingPages({super.key});

  @override
  State<LoadingPages> createState() => _LoadingPagesState();
}

class _LoadingPagesState extends State<LoadingPages> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ListSiswaPages(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Saeful Malik\nPPLG",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            SizedBox(height: 20),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
