import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme_change_poc/theme_service.dart';

import 'PaymentMethod/paymentmethod.dart';
import 'home_controller.dart';
import 'themes.dart';

void main()async {
  await GetStorage.init();
  runApp(MyApp());
}

// ThemeData _darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     primaryColor: Colors.amber,
//     buttonTheme: const ButtonThemeData(
//       buttonColor: Colors.amber,
//       disabledColor: Colors.grey,
//     ),
//     // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.red)
// );
//
// ThemeData _lightTheme = ThemeData(
//     brightness: Brightness.light,
//     primaryColor: Colors.blue,
//     buttonTheme: const ButtonThemeData(
//       buttonColor: Colors.blue,
//       disabledColor: Colors.grey,
//     ),
//     // colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.pink)
// );

class MyApp extends StatefulWidget {
  // MyApp() {
  //   _getThemeStatus();
  // }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // final controller = Get.put(HomeController());
  // var isDark = false;
  // RxBool _isLightTheme = false.obs;
  //
  // Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  //
  // _saveThemeStatus() async {
  //   SharedPreferences pref = await _prefs;
  //   pref.setBool('theme', _isLightTheme.value);
  // }

  // _getThemeStatus() async {
  //   var _isLight = _prefs.then((SharedPreferences prefs) {
  //     return prefs.getBool('theme') != null ? prefs.getBool('theme') : true;
  //   }).obs;
  //   _isLightTheme.value = (await _isLight.value)!;
  //   Get.changeThemeMode(_isLightTheme.value ? ThemeMode.light : ThemeMode.dark);
  // }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // theme: light,
      // darkTheme: dark,
      // themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: Themes().light,
      darkTheme: Themes().dark,
      themeMode: ThemeService().getThemeMode(),
      // theme: ThemeData(primarySwatch: Colors.blue, brightness: Brightness.dark),
      home: Scaffold(
        drawer: Container(
          width: 350,
          color: Colors.white,
          child: (Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  ImageIcon(
                    AssetImage(
                      'images/img.png',
                    ),
                    size: 100,
                    color: Colors.blue,
                  ),
                  Icon(
                    Icons.close,
                    color: Colors.blue,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 64,
                    width: 64,
                    child: CircleAvatar(
                      radius: 4,
                      backgroundColor: Colors.grey,
                      backgroundImage: AssetImage('images/img_1.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Prashant",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333)),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Chaubeyprashant20@gmail.com",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff333333)),
                      ),
                    ],
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.book_rounded,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "My Courses",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.analytics_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Daily Analysis",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.monetization_on,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "IPO",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.music_video,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Podcasts",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.food_bank,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Trading Account",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.leaderboard,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Self Learning",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.question_answer,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Doubt Counter",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.signal_cellular_connected_no_internet_4_bar,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Downloads",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.settings,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 17,
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff333333)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 48,
                width: 243,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff002F54),
                ),
                child: TextButton(
                  child: const Text("Contact Us"),
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 19, left: 24),
                child: Text(
                  "App Version - V2.00",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff333333)),
                ),
              )
            ],
          )),
        ),
        appBar: AppBar(
          title: const Text('Dark Mode Demo'),
          centerTitle: true,
          actions: [
            // GetBuilder<HomeController>(
            //     builder: (_) => Switch(
            //         value: controller.isDark,
            //         onChanged: (state) {
            //           controller.changeTheme(state);
            //         }))
          ],
          // actions: [
          //   IconButton(
          //       onPressed: () => Get.bottomSheet(Container(
          //             color: Colors.black12,
          //             height: 70,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               crossAxisAlignment: CrossAxisAlignment.center,
          //               children: [
          //                 InkWell(
          //                   onTap: () => Get.changeTheme(ThemeData.light()),
          //                   child: const Icon(Icons.lightbulb,
          //                   // child: Text(
          //                   //   "Light",
          //                   //   style: TextStyle(
          //                   //     fontWeight: FontWeight.bold,
          //                   //     fontSize: 20,
          //                   //   ),
          //                   ),
          //                 ),
          //                 InkWell(
          //                     onTap: () => Get.changeTheme(ThemeData.dark()),
          //                     child: const Icon(Icons.nightlight_round),
          //                     // child: Text(
          //                     //   "Dark",
          //                     //   style: TextStyle(
          //                     //     fontWeight: FontWeight.bold,
          //                     //     fontSize: 20,
          //                     //   ),
          //                     // )
          //                 )
          //               ],
          //             ),
          //           )),
          //       icon: const Icon(Icons.settings))
          // ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Obx(
              //   () => Text(
              //     'Click on switch to change to ${_isLightTheme.value ? 'Dark' : 'Light'} theme',
              //   ),
              // ),
              // ObxValue(
              //   (data) => Switch(
              //     value: _isLightTheme.value,
              //     onChanged: (val) {
              //       _isLightTheme.value = val;
              //       Get.changeThemeMode(
              //         _isLightTheme.value ? ThemeMode.light : ThemeMode.dark,
              //       );
              //       _saveThemeStatus();
              //     },
              //   ),
              //   false.obs,
              // ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 48,
                width: 243,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff002F54),
                ),
                child: TextButton(
                  child: const Text("Go to Payment Page"),
                  onPressed: () {
                    Get.to(const PaymentMethod());
                  },
                ),
              ),
              SizedBox(height: 40,),
              Container(
                height: 48,
                width: 243,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff002F54),
                ),
                child: TextButton(
                  child: const Text("Change Theme"),
                  onPressed: () {
                    ThemeService().changeThemeMode();
                    // Get.changeThemeMode(Get.isDarkMode?ThemeMode.light:ThemeMode.dark);
                  },
                ),
              ),
              // ElevatedButton(
              //     onPressed: () {
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //               builder: (BuildContext context) => ScreenOne()));
              //     },
              //     child: const Text("Go to HomePage")),
            ],
          ),
        ),
      ),
    );
  }
}
