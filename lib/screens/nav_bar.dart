import 'package:flutter/material.dart';
import 'package:flutter_website/utils/styles.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Row(
            children: [
              const Icon(Icons.change_history),
              const SizedBox(width: 8),
              Text(
                'PLR',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 20),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 7,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Home'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('New'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Women'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Store'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Contacts'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu),
              ),
              CircleAvatar(
                radius: 24,
                backgroundColor: Palette.primary500,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
