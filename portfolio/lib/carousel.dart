import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:folio/constants.dart';
import 'package:folio/homePage.dart';

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

  bool _isHoveredLeft = false;
  bool _isHoveredMiddle = false;
  bool _isHoveredRight = false;

  bool desktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 700;

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 700;
    final double screewidthsize = MediaQuery.of(context).size.width;
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
            const HomePage(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(20),
                height: screeheightsize / 1.25,
                width: screewidthsize / 2,
                child: Row(
                  children: [
                    Expanded(
                      flex: _isHoveredLeft ? 2 : 1,
                      child: AnimatedContainer(
                        height: _isHoveredMiddle
                            ? screeheightsize / 1.5
                            : _isHoveredRight
                                ? screeheightsize / 1.7
                                : screeheightsize,
                        margin: const EdgeInsets.all(10),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInToLinear,
                        child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              _isHoveredLeft = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _isHoveredLeft = false;
                            });
                          },
                          child: _isHoveredLeft
                              ? Container(
                                  // color: secondaryColor,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: _isHoveredLeft ? 4 : 0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  // color: secondaryColor,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: _isHoveredLeft ? 4 : 0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: _isHoveredMiddle ? 2 : 1,
                      child: AnimatedContainer(
                        height: _isHoveredRight || _isHoveredLeft
                            ? screeheightsize / 1.5
                            : screeheightsize,
                        margin: const EdgeInsets.all(10),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInToLinear,
                        child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              _isHoveredMiddle = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _isHoveredMiddle = false;
                            });
                          },
                          child: _isHoveredMiddle
                              ? Container(
                                  // color: secondaryColor,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: _isHoveredMiddle ? 4 : 0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  // color: secondaryColor,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: _isHoveredMiddle ? 4 : 0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: _isHoveredRight ? 2 : 1,
                      child: AnimatedContainer(
                        height: _isHoveredMiddle
                            ? screeheightsize / 1.5
                            : _isHoveredLeft
                                ? screeheightsize / 1.7
                                : screeheightsize,
                        margin: const EdgeInsets.all(10),
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInToLinear,
                        child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              _isHoveredRight = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _isHoveredRight = false;
                            });
                          },
                          child: _isHoveredRight
                              ? Container(
                                  // color: secondaryColor,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: _isHoveredRight ? 4 : 0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  // color: secondaryColor,
                                  decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: _isHoveredRight ? 4 : 0,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // const ParallaxText(),
          ],
        ),
      ),
    );
  }
}
