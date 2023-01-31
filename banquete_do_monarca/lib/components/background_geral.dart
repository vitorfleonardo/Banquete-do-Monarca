import 'package:flutter/material.dart';

class BackgroundGeneral extends StatelessWidget {
  const BackgroundGeneral({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/background-madeira.png",
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
