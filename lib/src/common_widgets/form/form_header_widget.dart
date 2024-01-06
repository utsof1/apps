import 'package:flutter/material.dart';

class FormheaderWidget extends StatelessWidget {
  const FormheaderWidget({
    Key? key,
    this.imageColor,
    this.heightBetween,
    required this.image,
    required this.tittle,
    required this.subtitle,
    this.imageHeight = 0.2,
    this.textAline,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  // variable -declearation construction

  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, tittle, subtitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAline;

  @override
  Widget build(BuildContext context) {
    //for define size
    final size = MediaQuery.of(context).size;
    //

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(image: AssetImage(image), height: size.height * imageHeight),
        SizedBox(height: heightBetween),
        Text(tittle, style: Theme.of(context).textTheme.headline4),
        Text(subtitle, style: Theme.of(context).textTheme.bodyLarge),
      ],
    );
  }
}
