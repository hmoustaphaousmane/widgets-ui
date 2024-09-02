import 'package:flutter/material.dart';

const double _cardWidth = 115;

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('title'),
                Icon(Icons.list, size: 24.0),
              ],
            ),
            SizedBox(height: size.height * 0.01,),
            const Align(
              alignment: Alignment.bottomLeft,
              child: Text('23'),
            ),
          ],
        ),
      ),
    );
  }
}
