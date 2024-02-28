import 'package:fbroadcast/fbroadcast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ott_code_frontend/common/color_extension.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List watchingMoviesArray = [
    "assets/images/mov_1.png",
    "assets/images/mov_2.png",
    "assets/images/mov_3.png",
    "assets/images/mov_4.png",
    "assets/images/mov_1.png",
    "assets/images/mov_2.png",
    "assets/images/mov_3.png",
    "assets/images/mov_4.png",
  ];

  @override
  void initState() {
    super.initState();

    FBroadcast.instance().register("change_mode", (value, callback) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: ApplicationColor.themeModeDark
            ? ApplicationColor.bgDark
            : ApplicationColor.cardLight,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    width: media.width,
                    height: media.width * 1.35,
                    child: ClipRect(
                      child: Image.asset(
                        ApplicationColor.themeModeDark
                            ? "assets/images/home_image_dark.png"
                            : "assets/images/home_image_light.png",
                        width: media.width,
                        height: media.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                "7.8",
                style: TextStyle(color: ApplicationColor.text, fontSize: 33),
              ),
              IgnorePointer(
                ignoring: true,
                child: RatingBar(
                  initialRating: 3.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  ratingWidget: RatingWidget(
                    full: Image.asset("assets/images/star_fill.png"),
                    half: Image.asset("assets/images/star.png"),
                    empty: Image.asset("assets/images/star.png"),
                  ),
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  onRatingUpdate: (rating) {
                    //print(rating);
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Movie",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " | ",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Adventure",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " | ",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Comedy",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " | ",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Family",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Watching",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ]),
              ),

              //==============================================================================//

              //sliders..
              SizedBox(
                height: media.width * 0.5,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: watchingMoviesArray.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        color: ApplicationColor.cardDark,
                        child: ClipRect(
                          child: Image.asset(
                            watchingMoviesArray[index].toString(),
                            width: media.width * 0.33,
                            height: media.width * 0.45,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),

              //==============================================================================//
              //sliders..

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "New & Upcoming",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ]),
              ),

              SizedBox(
                height: media.width * 0.5,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: watchingMoviesArray.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        color: ApplicationColor.cardDark,
                        child: ClipRect(
                          child: Image.asset(
                            watchingMoviesArray[index].toString(),
                            width: media.width * 0.33,
                            height: media.width * 0.45,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              ),
              //==============================================================================//
              //sliders..

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Text(
                    "Web Series on demand",
                    style: TextStyle(
                        color: ApplicationColor.text,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                ]),
              ),

              SizedBox(
                height: media.width * 0.5,
                child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: watchingMoviesArray.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        color: ApplicationColor.cardDark,
                        child: ClipRect(
                          child: Image.asset(
                            watchingMoviesArray[index].toString(),
                            width: media.width * 0.33,
                            height: media.width * 0.45,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
