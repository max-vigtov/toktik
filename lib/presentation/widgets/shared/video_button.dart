import 'package:flutter/material.dart';
import 'package:toktik/config/helpers/human_formarts.dart';
import 'package:toktik/domain/entities/video_post.dart';

class VideoButtons extends StatelessWidget {

  final VideoPost video;

  const VideoButtons({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CustomIconButon(value: video.likes, iconData: Icons.favorite, iconColor: Colors.red),
        _CustomIconButon(value: video.views, iconData: Icons.remove_red_eye_outlined),
        const _CustomIconButon(value: 0, iconData: Icons.remove_red_eye_outlined)

      ],
    );
  }
}

class _CustomIconButon extends StatelessWidget {

  final int value;
  final IconData iconData;
  final Color? color;

  const _CustomIconButon({ 
    required this.value,
    required this.iconData,  
    iconColor
    }): color = iconColor ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {}, 
          icon: Icon(iconData, color: color, size: 30,)),
        Text(HumanFormats.humanReadbleNumber(value.toDouble()))
      ],
    );
  }
}