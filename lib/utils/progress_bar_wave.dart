import 'package:flutter/material.dart';
import 'package:lofi_music/constants/design_elemets.dart';

class ProgressBarWave extends StatefulWidget {
  const ProgressBarWave({
    super.key,
  });

  @override
  State<ProgressBarWave> createState() => _ProgressBarWaveState();
}

class _ProgressBarWaveState extends State<ProgressBarWave> {
  @override
  Widget build(BuildContext context) {
    final screenOrientation = MediaQuery.of(context).orientation;
    return SizedBox(
        height: screenHeight * 0.2,
        width: screenOrientation == Orientation.portrait
            ? screenWidth
            : screenWidth / 2,
        child: MusicVisualizer());
  }
}

class MusicVisualizer extends StatelessWidget {
  List<Color> colors = [
    Colors.redAccent,
    Colors.blueAccent,
    Colors.yellowAccent,
    Colors.greenAccent,
  ];

  //900,700,500
  List<int> durations = [5, 3, 2, 4, 1];
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List<Widget>.generate(
            20,
            (index) => Visualizer(
                color: colors[index % 4], duration: durations[index % 5])));
  }
}

class Visualizer extends StatefulWidget {
  Visualizer({super.key, required this.color, required this.duration});
  final int duration;
  final Color color;
  @override
  State<Visualizer> createState() => _VisualizerState();
}

class _VisualizerState extends State<Visualizer>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(seconds: widget.duration));
    final curvedAnimation = CurvedAnimation(
        parent: animationController, curve: Curves.easeInOutCirc);
    animation = Tween<double>(begin: 0, end: 100).animate(curvedAnimation)
      ..addListener(() {
        setState(() {});
      });
    animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  // void toggleAnimation() {
  //   if (isPlaying == true) {
  //     animationController.repeat(reverse: true);
  //   } else {
  //     animationController.stop();
  //   }
  //   // setState(() {
  //   //   isPlaying = !isPlaying;
  //   // });
  // }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: animation.value,
          width: 3,
          decoration: BoxDecoration(
              color: widget.color, borderRadius: BorderRadius.circular(5)),
        ),
      ],
    );
  }
}
