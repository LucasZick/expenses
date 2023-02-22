import 'package:flutter/material.dart';

class NoItemsAdvice extends StatelessWidget {
  final String item;
  final String image;

  const NoItemsAdvice({super.key, this.item = '', this.image = ''});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((ctx, constraints) => Column(
            children: [
              if (item != '')
                SizedBox(
                  height: 20,
                  child: Text(
                    'No $item registered!',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              const SizedBox(
                height: 20,
              ),
              if (image != '')
                SizedBox(
                  height: constraints.maxHeight * 0.6,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                )
            ],
          )),
    );
  }
}
