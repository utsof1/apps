import 'package:flutter/material.dart';

import '../../../../constants/image_string.dart';
import '../../../../constants/text_string.dart';

class LoginheaderWidget extends StatelessWidget {
  const LoginheaderWidget({super.key, required Size size});

  @override
  Widget build(BuildContext context) {
    //for define size
    final size = MediaQuery.of(context).size;
    //

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: const AssetImage(tLoginPageImage),
          height: size.height * 0.3,
        ),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline4),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
