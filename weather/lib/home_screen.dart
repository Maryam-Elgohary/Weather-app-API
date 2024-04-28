import 'package:auto_scroll_text/auto_scroll_text.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/Data/Models/response.dart';
import 'package:weather_app/Data/api/apirepo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  WeatherApi get = WeatherApi();
  late String city = 'brazil';
  late String city1 = 'Mansoura';
  late String city2 = 'zagazig';
  late String city3 = 'tanta';
  late String city4 = 'Banha';
  late String city5 = 'sinai';
  late String city6 = 'qena';
  late String city7 = 'luxor';
  late String city8 = 'Aswan';

  int counter = 0;
  @override
  void initstate() {
    get.getApiData(city);
    super.initState();
  }

  @override
  void initstate1() {
    get.getApiData(city1);
    super.initState();
  }

  @override
  void initstate2() {
    get.getApiData(city2);
    super.initState();
  }

  @override
  void initstate3() {
    get.getApiData(city3);
    super.initState();
  }

  @override
  void initstate4() {
    get.getApiData(city4);
    super.initState();
  }

  @override
  void initstate5() {
    get.getApiData(city5);
    super.initState();
  }

  @override
  void initstate6() {
    get.getApiData(city6);
    super.initState();
  }

  @override
  void initstate7() {
    get.getApiData(city7);
    super.initState();
  }

  @override
  void initstate8() {
    get.getApiData(city8);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    WeatherResponse object;

    bool _isHovered = false;

    return Scaffold(
      backgroundColor: Color(0xff5842A9),
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18),
            child: FutureBuilder<WeatherResponse>(
              future: WeatherApi().getApiData(city),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  object = snapshot.data!;
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff331c71),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.grid_view_rounded,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Text(
                              object.city.name,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: Color(0xff331c71),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.refresh,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "${object.list.elementAt(0).weather.elementAt(0).description}",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      Stack(
                        children: [
                          Text(
                            "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                            style: TextStyle(
                                fontSize: 120,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Opacity(
                            opacity: 0.7,
                            child: Padding(
                              padding: EdgeInsets.only(left: 50, top: 60),
                              child: Image(
                                  height: 140,
                                  image: NetworkImage(
                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                            ),
                          )
                        ],
                      ),
                      Text(
                        "${object.list.elementAt(0).dt_text.toString()}",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 120,
                        width: 400,
                        decoration: BoxDecoration(
                            color: Color(0xff331C71),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 18, left: 15),
                            //   child: Column(
                            //     children: [
                            //       Image(
                            //           height: 40,
                            //           image: NetworkImage(
                            //               "https://webstockreview.net/images/clipart-free-umbrella-18.png")),
                            //       Text(
                            //         "30°",
                            //         style: TextStyle(
                            //             fontSize: 16,
                            //             fontWeight: FontWeight.bold,
                            //             color: Colors.white),
                            //       ),
                            //       Text(
                            //         "Precipitation",
                            //         style: TextStyle(
                            //             fontSize: 16, color: Colors.white),
                            //       )
                            //     ],
                            //   ),
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 18),
                              child: Column(
                                children: [
                                  Image(
                                      height: 40,
                                      image: NetworkImage(
                                          "https://i1.wp.com/www.futurefarms.in/wp-content/uploads/2019/04/water-drop-icon.png?ssl=1")),
                                  Text(
                                    "${object.list.elementAt(0).main.humidity.toString()}",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Humidity",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 18, right: 15),
                              child: Column(
                                children: [
                                  Image(
                                      height: 40,
                                      image: NetworkImage(
                                          "https://icon-library.com/images/wind-icon-png/wind-icon-png-8.jpg")),
                                  Text(
                                    "${object.list.elementAt(0).wind.speed.toString()} km/h",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                  Text(
                                    "Wind Speed",
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Text(
                          //   "Today",
                          //   style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       color: Colors.white,
                          //       fontSize: 17),
                          // ),
                          Text(
                            "5 Day / 3 Hour Forecast",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 17),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(1).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(1).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(1).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(2).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(2).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(2).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(3).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(3).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(3).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(4).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(4).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(4).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(5).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(5).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(5).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(6).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(6).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(6).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(7).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(7).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(7).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(8).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(8).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(8).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(9).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(9).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(9).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(10).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(10).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(10).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 13,
                            ),
                            Container(
                              height: 120,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(19),
                                  color: Color(0xff331c71)),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 18),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: AutoScrollText(
                                          "${object.list.elementAt(11).dt_text.toString()}",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                          velocity: Velocity(
                                              pixelsPerSecond: Offset(10, 0))),
                                    ),
                                    Image(
                                        height: 40,
                                        image: NetworkImage(
                                            "https://openweathermap.org/img/wn/${object.list.elementAt(11).weather.elementAt(0).icon.toString()}@2x.png")),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 8.0),
                                      child: Center(
                                        child: Text(
                                          "${object.list.elementAt(11).main.temp.toInt().toString()}°",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Other Cities",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 17),
                          ),
                          Text(
                            "+",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          )
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            FutureBuilder<WeatherResponse>(
                              future: WeatherApi().getApiData(city1),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  object = snapshot.data!;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            color: Color(0xff331c71)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                  height: 70,
                                                  image: NetworkImage(
                                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      object.city.name,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${object.list.elementAt(0).weather.elementAt(0).description.toString()}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  );
                                }
                                if (snapshot.hasError) {
                                  print(snapshot.error.toString());
                                }
                                return Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                            FutureBuilder<WeatherResponse>(
                              future: WeatherApi().getApiData(city2),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  object = snapshot.data!;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            color: Color(0xff331c71)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                  height: 70,
                                                  image: NetworkImage(
                                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      object.city.name,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${object.list.elementAt(0).weather.elementAt(0).description.toString()}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  );
                                }
                                if (snapshot.hasError) {
                                  print(snapshot.error.toString());
                                }
                                return Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                            FutureBuilder<WeatherResponse>(
                              future: WeatherApi().getApiData(city3),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  object = snapshot.data!;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            color: Color(0xff331c71)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                  height: 70,
                                                  image: NetworkImage(
                                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      object.city.name,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${object.list.elementAt(0).weather.elementAt(0).description.toString()}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  );
                                }
                                if (snapshot.hasError) {
                                  print(snapshot.error.toString());
                                }
                                return Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                            FutureBuilder<WeatherResponse>(
                              future: WeatherApi().getApiData(city4),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  object = snapshot.data!;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            color: Color(0xff331c71)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                  height: 70,
                                                  image: NetworkImage(
                                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      object.city.name,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${object.list.elementAt(0).weather.elementAt(0).description.toString()}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  );
                                }
                                if (snapshot.hasError) {
                                  print(snapshot.error.toString());
                                }
                                return Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                            FutureBuilder<WeatherResponse>(
                              future: WeatherApi().getApiData(city5),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  object = snapshot.data!;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            color: Color(0xff331c71)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                  height: 70,
                                                  image: NetworkImage(
                                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      object.city.name,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${object.list.elementAt(0).weather.elementAt(0).description.toString()}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  );
                                }
                                if (snapshot.hasError) {
                                  print(snapshot.error.toString());
                                }
                                return Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                            FutureBuilder<WeatherResponse>(
                              future: WeatherApi().getApiData(city6),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  object = snapshot.data!;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            color: Color(0xff331c71)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                  height: 70,
                                                  image: NetworkImage(
                                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      object.city.name,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${object.list.elementAt(0).weather.elementAt(0).description.toString()}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  );
                                }
                                if (snapshot.hasError) {
                                  print(snapshot.error.toString());
                                }
                                return Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                            FutureBuilder<WeatherResponse>(
                              future: WeatherApi().getApiData(city7),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  object = snapshot.data!;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            color: Color(0xff331c71)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                  height: 70,
                                                  image: NetworkImage(
                                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      object.city.name,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${object.list.elementAt(0).weather.elementAt(0).description.toString()}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  );
                                }
                                if (snapshot.hasError) {
                                  print(snapshot.error.toString());
                                }
                                return Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                            FutureBuilder<WeatherResponse>(
                              future: WeatherApi().getApiData(city8),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  object = snapshot.data!;
                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 70,
                                        width: 280,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            color: Color(0xff331c71)),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 8.0, right: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image(
                                                  height: 70,
                                                  image: NetworkImage(
                                                      "https://openweathermap.org/img/wn/${object.list.elementAt(0).weather.elementAt(0).icon.toString()}@2x.png")),
                                              Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Center(
                                                    child: Text(
                                                      object.city.name,
                                                      style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                  Text(
                                                    "${object.list.elementAt(0).weather.elementAt(0).description.toString()}",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ],
                                              ),
                                              Center(
                                                child: Text(
                                                  "${object.list.elementAt(0).main.temp.toInt().toString()}°",
                                                  style: TextStyle(
                                                      fontSize: 30,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  );
                                }
                                if (snapshot.hasError) {
                                  print(snapshot.error.toString());
                                }
                                return Center(
                                  child: Container(
                                    height: 100,
                                    width: 100,
                                    child: const CircularProgressIndicator(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }

                if (snapshot.hasError) {
                  print(snapshot.error.toString());
                }
                return Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    child: const CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
