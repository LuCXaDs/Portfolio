import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:folio/constants.dart';
import 'package:folio/homePage.dart';
import 'package:folio/presentation.dart';


class Site extends StatefulWidget {
  const Site({Key? key}) : super(key: key);

  @override
  _SiteState createState() => _SiteState();
}

class _SiteState extends State<Site> {
  final CarouselController _carouselController = CarouselController();
  int _currentPage = 0;

  void onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _currentPage = index;
    });
  }

  bool desktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    // final double screewidthsize = MediaQuery.of(context).size.width;
    final double screeheightsize = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: CarouselSlider(
          carouselController: _carouselController,
          options: CarouselOptions(
            onPageChanged: onPageChanged,
            height: screeheightsize,
            scrollDirection: Axis.vertical,
            enableInfiniteScroll: false,
            viewportFraction: 1.0,
            // enlargeCenterPage: true,
            pageSnapping: true,
            scrollPhysics: const PageScrollPhysics(),
          ),
          items: [
            const Presentation(),
            const HomePage(),
            const Presentation(),
            // const ParallaxText(),
          ],
        ),
      ),
    );
  }
}
