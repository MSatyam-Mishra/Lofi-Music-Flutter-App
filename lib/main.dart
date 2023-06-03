import 'package:flutter/material.dart';

import 'package:lofi_music/constants/design_elemets.dart';
import 'package:lofi_music/utils/image_card_list.dart';

import 'package:lofi_music/utils/progress_bar_wave.dart';
import 'package:motion/motion.dart';

import 'constants/credits.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize the plugin to determine gyroscope availability.
  await Motion.instance.initialize();

  /// Globally set Motion's update interval to 60 frames per second.
  Motion.instance.setUpdateInterval(60.fps);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lo-fi App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isButtonClick = false;
  late Color buttonSelectionColor;
  late PageController _pageController;

  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    isButtonClick = false;

    _pageController = PageController();
    buttonSelectionColor = Colors.white;
  }

  // buttonClickfn() {
  //   print("button is pressed!!!!");
  //   setState(() {
  //     isButtonClick = !isButtonClick;
  //     print(isButtonClick);
  //     if (isButtonClick == true) {
  //       buttonSelectionColor = Color.fromARGB(255, 8, 73, 10);
  //     } else {
  //       buttonSelectionColor = Colors.white;
  //     }
  //   });
  //   //return buttonSelectionColor;
  // }
//player fn

  @override
  void dispose() {
    _pageController.dispose();
    buttonSelectionColor;
    super.dispose();
  }

  //work with animation

  bool _isAnimating = false;

  void _toggleAnimation() {
    setState(() {
      _isAnimating = !_isAnimating;
    });
  }

  void showCustomDialog(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierLabel: "Credit",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      pageBuilder: (_, __, ___) {
        return Center(
          child: Container(
            padding: EdgeInsets.all(25),
            height: screenHeight,
            width: screenWidth,
            child: Material(color: Colors.transparent, child: AllURLs()),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 32, 32).withOpacity(0.8),
                borderRadius: BorderRadius.circular(20)),
          ),
        );
      },
      transitionBuilder: (_, anim, __, child) {
        Tween<Offset> tween;
        if (anim.status == AnimationStatus.reverse) {
          tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
        } else {
          tween = Tween(begin: Offset(1, 0), end: Offset.zero);
        }

        return SlideTransition(
          position: tween.animate(anim),
          child: FadeTransition(
            opacity: anim,
            child: child,
          ),
        );
      },
    );
  }

  // Access the duration value using the callback method
  @override
  Widget build(BuildContext context) {
    final screenOrientation = MediaQuery.of(context).orientation;
    // Access the duration variable from the state
    final List<Color> colors = [
      Colors.red[900]!,
      Colors.green[900]!,
      Colors.blue[900]!,
      Colors.brown[900]!
    ];
    final List<int> duration = [900, 700, 600, 800, 500];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 32, 32, 32),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  height: screenOrientation == Orientation.portrait
                      ? screenHeight * 0.65
                      : screenHeight * 0.95,
                  child: ImageCardList(
                    pageController: _pageController,
                  )),
              Container(
                padding: const EdgeInsets.only(right: 25),
                alignment: Alignment.centerRight,
                height: screenHeight * 0.02,
                child: InkWell(
                  onTap: () => showCustomDialog(context),
                  child: const Icon(
                    Icons.info_outline,
                    color: Colors.white,
                  ),
                ),
              ),
              screenOrientation == Orientation.portrait
                  ? Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: SizedBox(
                          height: screenHeight * 0.2, child: ProgressBarWave()),
                    )
                  : SizedBox(
                      height: 0,
                    )
              //ProgressBarWave(),
            ],
          ),
        ));
  }
}
