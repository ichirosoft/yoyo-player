import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:yoyo_player/src/responses/play_response.dart';
import 'package:yoyo_player/src/source/video_style.dart';

Widget bottomBar(
    {VideoPlayerController controller,
    String videoSeek,
    String videoDuration,
    Widget backwardIcon,
    Widget forwardIcon,
    bool showMenu,
    VideoStyle videoStyle,
    Function play}) {
  return showMenu
      ? Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 40,
            child: Padding(
              padding: EdgeInsets.all(0.0),
              child: Stack(
                children: [
                  Column(
                    children: [
                      VideoProgressIndicator(
                        controller,
                        allowScrubbing: true,
                        colors: VideoProgressColors(
                          playedColor: videoStyle.playedColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            !videoStyle.hideVideoSeek
                                ? Text(
                                    videoSeek,
                                    style: videoStyle.videoSeekStyle,
                                  )
                                : Container(),
                            !videoStyle.hideVideoDuration
                                ? Text(
                                    videoDuration,
                                    style: videoStyle.videoSeekStyle,
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                              onTap: () {
                                rewind(controller);
                              },
                              child: backwardIcon),
                          InkWell(
                            onTap: play,
                            child: controller.value.isPlaying ? videoStyle.pause : videoStyle.play,
                          ),
                          InkWell(
                            onTap: () {
                              fastForward(controller: controller);
                            },
                            child: forwardIcon,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      : Container();
}
