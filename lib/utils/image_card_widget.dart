import 'package:flutter/material.dart';
import 'package:lofi_music/utils/parallex_controller.dart';
import 'package:motion/motion.dart';

import '../constants/constants.dart';
import '../constants/design_elemets.dart';

import 'package:audioplayers/audioplayers.dart';

class ImageCardWidget extends StatefulWidget {
  ImageCardWidget({super.key, required this.cardDetails});
  CardDetails cardDetails;

  @override
  State<ImageCardWidget> createState() => _ImageCardWidgetState();
}

class _ImageCardWidgetState extends State<ImageCardWidget> {
  //audio objects and fn

  Duration? duration = const Duration(seconds: 0);
  bool isPlaying = false;
  final player = AudioPlayer();
  void initPlayer() {
    player.setSource(UrlSource(widget.cardDetails.musicpath));

    // duration = await player.getDuration();
  }

  @override
  void initState() {
    super.initState();
    initPlayer();
    isPlaying = false;

    //musicDuration = duration;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    isPlaying;
  }

  @override
  Widget build(BuildContext context) {
    final screenOrientation = MediaQuery.of(context).orientation;
    Future<void> showPermissionRequestDialog(BuildContext context,
        {required Function() onDone}) async {
      return showDialog<void>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
                title: const Text('Permission required'),
                content: const Text(
                    'On iOS 13+, you need to grant access to the gyroscope. A permission will be requested to proceed.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Motion.instance.requestPermission();
                    },
                    child: const Text('OK'),
                  ),
                ],
              ));
    }

    if (Motion.instance.isPermissionRequired &&
        !Motion.instance.isPermissionGranted) {
      showPermissionRequestDialog(
        context,
        onDone: () {
          setState(() {});
        },
      );
    }

    return screenOrientation == Orientation.portrait
        ? SizedBox(
            child: Motion.only(
              borderRadius: BorderRadius.circular(25),
              shadow: null,
              child: Container(
                height: screenHeight * 0.6,
                width: screenWidth,
                padding: const EdgeInsets.only(
                    left: 30, right: 30, top: 30, bottom: 30),
                margin: const EdgeInsets.only(left: 30, right: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: NetworkImage(
                          widget.cardDetails.imagePath,
                        ),
                        fit: BoxFit.cover)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: (screenWidth - 120) * 0.64,
                        child: Text(
                          widget.cardDetails.audioName,
                          maxLines: null,
                          style: songtitleStyle,
                          overflow: TextOverflow.clip,
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          player;
                          player.getDuration();
                          setState(() {
                            isPlaying = !isPlaying;
                          });
                          isPlaying == true
                              ? player
                                  .play(UrlSource(widget.cardDetails.musicpath))
                              : player.pause();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(colors: [
                                Color.fromARGB(164, 0, 0, 12),
                                Color.fromARGB(178, 0, 0, 0)
                              ])),
                          width: (screenWidth - 120) * 0.29,
                          child: Icon(
                            isPlaying == true
                                ? Icons.pause_sharp
                                : Icons.play_arrow,
                            size: 60,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ]),
              ),
            ),
          )
        : Stack(
            children: [
              Container(
                width: screenWidth / 4,
                height: screenHeight / 1.2,
                // padding: const EdgeInsets.only(
                //     left: 30, right: 30, top: 30, bottom: 30),
                // margin: const EdgeInsets.only(
                //   left: 30,
                //   right: 30,
                // ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Parallax(
                    background: Image.network(widget.cardDetails.imagePath,
                        width: screenWidth / 4,
                        height: screenHeight / 1.2,
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () async {
                  player;
                  player.getDuration();
                  setState(() {
                    isPlaying = !isPlaying;
                  });
                  isPlaying == true
                      ? player.play(UrlSource(widget.cardDetails.musicpath))
                      : player.pause();
                },
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(164, 0, 0, 12),
                          Color.fromARGB(178, 0, 0, 0)
                        ])),
                    width: (screenWidth - 120) * 0.3,
                    child: Icon(
                      isPlaying == true ? Icons.pause_sharp : Icons.play_arrow,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
