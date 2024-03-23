import 'package:flutter/material.dart';
import 'package:hackathon_project/data/dummy_data.dart';
import 'package:hackathon_project/misc/colors.dart';
import 'package:hackathon_project/widgets/app_large_text.dart';
import 'package:hackathon_project/widgets/app_text.dart';
import 'package:hackathon_project/widgets/mini_hotel_item.dart';
import 'package:hackathon_project/widgets/mini_place_item.dart';
import 'package:hackathon_project/widgets/mini_restaurant_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
            TabBar(
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
                    itemCount: dummyPlaces.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        clipBehavior: Clip.hardEdge,
                        margin: const EdgeInsets.only(right: 15, top: 20),
                        width: 200,
                        height: 300,
                        child: MiniPlaceItem(dummyPlaces[index]),
                      );
                    },
                  ),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dummyPlaces.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        clipBehavior: Clip.hardEdge,
                        margin: const EdgeInsets.only(right: 15, top: 20),
                        width: 200,
                        height: 300,
                        child: MiniHotelItem(dummyHotels[index]),
                      );
                    },
                  ),
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dummyPlaces.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        clipBehavior: Clip.hardEdge,
                        margin: const EdgeInsets.only(right: 15, top: 20),
                        width: 200,
                        height: 300,
                        child: MiniRestaurantItem(dummyrestaurants[index]),
                      );
                    },
                  ),
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
                    text: 'Activities',
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
                itemCount: placesTypes.length,
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
                                  'assets/icons/${placesTypes.values.elementAt(index)}'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        AppText(
                          text: placesTypes.keys.elementAt(index),
                          color: AppColors.textColor2,
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
