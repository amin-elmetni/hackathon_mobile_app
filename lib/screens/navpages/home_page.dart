import 'package:flutter/material.dart';
import 'package:hackathon_project/misc/colors.dart';
import 'package:hackathon_project/widgets/app_large_text.dart';
import 'package:hackathon_project/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var icons = {
    "snorkling.png": "Snorkling",
    "hiking.png": "Hiking",
    "horsing.png": "Horsing",
    "cinema.png": "Cinema",
    "biking.png": "Biking",
  };

  var images = {
    ["Fedan", "Morocco, Tetouan"]: "fedan.jpg",
    ["Bab Okla", "Morocco, Tetouan"]: "bab_okla.jpg",
    ["Eglisia", "Morocco, Tetouan"]: "eglesia.jpg",
    ["Hamama", "Morocco, Tetouan"]: "hamama.jpg",
  };

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //* MENU TEXT
            Container(
              color: AppColors.mainColor,
              padding: const EdgeInsets.only(top: 50, bottom: 20, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Builder(
                    builder: (context) => IconButton(
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.5)),
                    child: const Icon(Icons.person),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            //* DISCOVER TEXT
            Container(
              margin: const EdgeInsets.only(left: 20),
              child: const AppLargeText(text: 'Discover'),
            ),
            const SizedBox(height: 10),
            //* TABBAR
            Container(
              child: Align(
                child: TabBar(
                  tabAlignment: TabAlignment.start,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  controller: tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  dividerColor: Colors.transparent,
                  indicator:
                      CircleTabIndicator(color: AppColors.mainColor, radius: 4),
                  tabs: const [
                    Tab(text: 'Places'),
                    Tab(text: 'Hotels'),
                    Tab(text: 'Restaurants'),
                  ],
                ),
              ),
            ),
            //* TABBAR VIEW
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 300,
              width: double.maxFinite,
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 15, top: 20),
                        width: 200,
                        height: 300,
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/images/places/${images.values.elementAt(index)}'),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Container(
                                color: AppColors.mainColor.withOpacity(0.6),
                                margin: const EdgeInsets.only(bottom: 16),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14, vertical: 5),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppLargeText(
                                      text: images.keys.elementAt(index)[0],
                                      size: 18,
                                      color: Colors.white,
                                    ),
                                    const SizedBox(height: 3),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_pin,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        const SizedBox(width: 4),
                                        AppText(
                                          text: images.keys.elementAt(index)[1],
                                          color: Colors.white,
                                          size: 12,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                  const Text('Hotels'),
                  const Text('Restaurants'),
                ],
              ),
            ),
            const SizedBox(height: 40),
            //* EXPLORE MORE
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppLargeText(
                    text: 'Explore more',
                    size: 22,
                  ),
                  AppText(
                    text: 'See all',
                    color: AppColors.textColor1,
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            //* EXPLORE MORE SLIDER
            Container(
              height: 120,
              width: double.maxFinite,
              margin: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: icons.length,
                itemBuilder: (_, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.buttonBackground,
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/icons/${icons.keys.elementAt(index)}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          child: AppText(
                            text: icons.values.elementAt(index),
                            color: AppColors.textColor2,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  CircleTabIndicator({required this.color, required this.radius});

  final Color color;
  double radius;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirlcePainter(color: color, radius: radius);
  }
}

class _CirlcePainter extends BoxPainter {
  _CirlcePainter({required this.color, required this.radius});

  final Color color;
  double radius;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - 2, configuration.size!.height - radius);

    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}
