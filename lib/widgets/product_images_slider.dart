import "package:flutter/material.dart";
  import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.redAccent,
      indicatorBackgroundColor: Colors.white,
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("asets/images/clock.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("asets/images/shoe.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("asets/images/tshirt.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("asets/images/clock.png"),
        ),
      ],
    );
  }
}
