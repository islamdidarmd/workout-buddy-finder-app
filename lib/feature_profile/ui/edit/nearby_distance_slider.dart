import 'package:flutter/material.dart';
import 'package:workout_buddy_finder/core/core.dart';

class NearbyDistanceSlider extends StatefulWidget {
  const NearbyDistanceSlider({
    Key? key,
    required this.min,
    required this.max,
    required this.initial,
    required this.onDistanceSelected,
  }) : super(key: key);

  final double min;
  final double max;
  final double initial;
  final void Function(double distance) onDistanceSelected;

  @override
  State<NearbyDistanceSlider> createState() => _NearbyDistanceSliderState();
}

class _NearbyDistanceSliderState extends State<NearbyDistanceSlider> {
  late double _sliderSelectedValue;

  @override
  void initState() {
    super.initState();
    _sliderSelectedValue = widget.initial.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          label: '$_sliderSelectedValue Km',
          value: _sliderSelectedValue,
          divisions: (widget.max - widget.min).toInt(),
          min: widget.min,
          max: widget.max,
          onChanged: (value) {
            setState(() {
              _sliderSelectedValue = value;
            });
          },
          onChangeEnd: widget.onDistanceSelected,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              lightBody(context, '${widget.min.toInt()}'),
              lightBody(context, '${widget.max.toInt()}'),
            ],
          ),
        ),
      ],
    );
  }
}
