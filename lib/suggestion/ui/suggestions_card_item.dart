import 'package:flutter/material.dart';

class SuggestionsCardItem extends StatelessWidget {
  final double overlayColorOpacity = 0.4;

  const SuggestionsCardItem({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraintType) {
        final size = constraintType.biggest;
        print(size);
        final radius = size.width * 0.08;

        return Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                  image: AssetImage('assets/icon/app_logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
              foregroundDecoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(radius),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(overlayColorOpacity),
                    Colors.transparent,
                  ],
                  stops: [
                    0.0,
                    0.5,
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
