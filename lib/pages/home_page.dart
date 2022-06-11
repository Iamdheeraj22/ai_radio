import 'package:ai_radio/model/radio.dart';
import 'package:ai_radio/utils/ai_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MyRadio> radios = [];
  @override
  void initState() {
    super.initState();
    fetchRadioList();
  }

  fetchRadioList() async {
    final radioJson = await rootBundle.loadString("assets/radio.json");
    radios = RadioList.fromJson(radioJson).radioList;
    print(radios);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: Drawer(),
      body: Stack(children: [
        VxAnimatedBox()
            .size(context.screenWidth, context.screenHeight)
            .withGradient(LinearGradient(
                colors: [AIUtils.primryColor1, AIUtils.primryColor2],
                begin: Alignment.topLeft,
                end: Alignment.topRight))
            .make(),
        AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: "AI Radio".text.xl4.bold.white.make().shimmer(
              primaryColor: Vx.purple100, secondaryColor: Colors.white),
        ).h(100.0).p16(),
        VxSwiper.builder(
            itemCount: radios.length,
            itemBuilder: (context, index) {
              return Container();
            })
      ]),
    );
  }
}
