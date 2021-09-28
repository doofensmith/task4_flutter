import 'package:flutter/material.dart';

import '/ui/home_page/home_content.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "My Notes",
        ),
      ),
      body: HomeContent(),
    );
  }
}
