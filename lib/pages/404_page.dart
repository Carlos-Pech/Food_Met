import 'package:flutter/material.dart';

class Page404 extends StatelessWidget {
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("404"),
      ),
      body: const Center(
        child:Text("404",style: TextStyle(color: Colors.red),),
      ),
    );
  }
}