import 'package:flutter/material.dart';

import '../utils/styles.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Text(
            'SPORTSWEAR',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                'assets/shoes_image_1.jpg',
                fit: BoxFit.cover,
                height: 500,
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  bottom: 40,
                  left: 40,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Men\'s & Women\'s',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Online store selling high-quality sportswear',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: FilledButton(
                        onPressed: () {},
                        child: const Text('Buy Now'),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const SizedBox(width: 40),
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                height: 300,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: const ColorFilter.mode(
                                      Colors.black38,
                                      BlendMode.multiply,
                                    ),
                                    fit: BoxFit.fitWidth,
                                    alignment: Alignment.topCenter,
                                    image:
                                        Image.asset('assets/image_1.jpg').image,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                      'NEW\nCOLLECTION',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge
                                          ?.copyWith(
                                            color: Colors.white,
                                            fontSize: 24,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: 0,
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: CircleAvatar(
                                    radius: 24,
                                    backgroundColor: Palette.background500,
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.arrow_outward_rounded,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
