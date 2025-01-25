import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Delivery in Progress.."),
        backgroundColor: Colors.transparent,
      ),
      body: const Center(
        child: Text("Your delivery is on the way!"),
      ),
    );
  }
}
