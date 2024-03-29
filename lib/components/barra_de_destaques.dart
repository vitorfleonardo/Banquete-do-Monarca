import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class BarraDestaques extends StatelessWidget {
  const BarraDestaques({
    Key? key,
    required this.imageSliders,
  }) : super(key: key);

  final List<Widget> imageSliders;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.05),
      height: MediaQuery.of(context).size.height * 0.6,
      width: MediaQuery.of(context).size.width * 0.869,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom,
          autoPlay: true,
        ),
        items: imageSliders,
      ),
    );
  }
}
