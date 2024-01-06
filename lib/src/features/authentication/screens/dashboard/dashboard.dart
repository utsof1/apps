import 'package:apps/src/repository/authentication_repository/authentication_repo.dart';
import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Text(tAppName, style: Theme.of(context).textTheme.headline4),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.red),
            child: IconButton(
              onPressed: () {
                AuthenticationRepository.instance.logout();
              },
              icon: const Image(image: AssetImage(tDashBoardImage)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Need Creative")],
          ),
        ),
      ),
    );
  }
}
