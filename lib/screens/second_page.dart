import 'package:flutter/material.dart';
import 'package:flutter_website/utils/styles.dart';
import '../utils/extensions.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black12,
                      BlendMode.multiply,
                    ),
                    fit: BoxFit.fitWidth,
                    image: AssetImage('image_2.jpg'),
                  ),
                ),
                padding: const EdgeInsets.all(24),
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Men's\nCollection",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                    ),
                    const SizedBox(height: 16),
                    FilledButton(
                      style: const ButtonStyle().copyWith(
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text('Open Store'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 40),
            Expanded(
              child: Container(
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                      Colors.black12,
                      BlendMode.multiply,
                    ),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    image: AssetImage('image_5.jpg'),
                  ),
                ),
                padding: const EdgeInsets.all(24),
                alignment: Alignment.bottomLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Women's\nCollection",
                      style:
                          Theme.of(context).textTheme.headlineLarge?.copyWith(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                    ),
                    const SizedBox(height: 16),
                    FilledButton(
                      style: const ButtonStyle().copyWith(
                        backgroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                      ),
                      onPressed: () {},
                      child: const Text('Open Store'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Row(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                    image: AssetImage('image_6.jpg'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: Column(
                  children: [
                    Text(
                      'OUR STORY',
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 24),
                    Text(
                      '"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Container(
                            height: context.width * 0.15,
                            color: Colors.black12,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '100+',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge,
                                  ),
                                  Text(
                                    'stores around\nthe world',
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Container(
          height: 1000,
          color: Colors.black26,
        )
      ],
    );
  }
}
