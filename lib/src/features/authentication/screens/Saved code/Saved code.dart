import 'package:flutter/material.dart';

class saved extends StatelessWidget {
  const saved({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(".appable/"),
        leading: const Icon(Icons.ondemand_video),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add_shopping_cart_outlined),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Heading",
              style: Theme.of(context).textTheme.displayMedium,
            ),
            Text(
              "Sub_heading",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text(
              "Paragraph",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outlined Button"),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Image(image: AssetImage("aseets/images/2.jpg")),
            ),
          ],
        ),
      ),
    );
  }
}