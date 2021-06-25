import 'package:flutter/material.dart';

/// Video Player Icon style
class VideoStyle {
  VideoStyle({
    this.hideVideoControl = false,
    this.hideVideoFullScreen = false,
    this.hideVideoSeek = false,
    this.hideVideoDuration = false,
    this.play = const Icon(Icons.play_arrow),
    this.pause = const Icon(Icons.pause),
    this.fullscreen = const Icon(Icons.fullscreen),
    this.forward = const Icon(
      Icons.fast_forward_rounded,
      color: Colors.white,
    ),
    this.backward = const Icon(
      Icons.fast_rewind_rounded,
      color: Colors.white,
    ),
    this.playButtonColor = Colors.white,
    this.playedColor = Colors.green,
    this.videoSeekStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    this.qualitystyle = const TextStyle(
      color: Colors.white,
    ),
    this.qaShowStyle = const TextStyle(
      color: Colors.white,
    ),
  });

  final bool hideVideoControl;
  final bool hideVideoFullScreen;
  final bool hideVideoSeek;
  final bool hideVideoDuration;
  final Widget play;
  final Widget pause;
  final Widget fullscreen;
  final Widget forward;
  final Widget backward;
  final Color playedColor;
  final Color playButtonColor;
  final TextStyle videoSeekStyle;
  final TextStyle qualitystyle;
  final TextStyle qaShowStyle;
}
