import 'package:flutter/material.dart';
import '../utils/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            color: Palette.primary500,
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('TURNER & ASSOCIATES'),
                    Text('ARCHITECTS'),
                  ],
                ),
                const Divider(
                  color: Palette.background500,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    'DESIGN\n&BUILD',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                const Divider(
                  color: Palette.background500,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: Palette.background500,
          ),
        ),
      ],
    ));
  }
}
