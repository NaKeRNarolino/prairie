import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NewProjectScreen extends StatelessWidget {
  const NewProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.secondary,
      body: Stack(
        children: [
          IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back))
        ],
      ),
    );
  }
}
