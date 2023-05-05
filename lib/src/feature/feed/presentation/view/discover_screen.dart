import 'package:flutter/material.dart';

import '../../../../shared/presentation/widgets/custom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Discover')),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
