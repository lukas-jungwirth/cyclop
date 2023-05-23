import 'package:flutter/material.dart';

import '../../../theme.dart';
import '../../tabbar.dart';
import 'channel_slider.dart';
import 'hsl_sliders.dart';

typedef ChannelValueGetter = double Function(Color value);

typedef ValueLabelGetter = String Function(Color value);

class ChannelSliders extends StatefulWidget {
  final Color selectedColor;

  final ValueChanged<Color> onChange;

  const ChannelSliders(
      {required this.selectedColor, required this.onChange, Key? key})
      : super(key: key);

  @override
  ChannelSlidersState createState() => ChannelSlidersState();
}

class ChannelSlidersState extends State<ChannelSliders> {
  bool hslMode = true;

  Color get color => widget.selectedColor;

  @override
  Widget build(BuildContext context) =>
      HSLSliders(color: color, onColorChanged: widget.onChange);
}
