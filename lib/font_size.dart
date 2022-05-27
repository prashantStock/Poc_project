// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class ToggleButtonTest extends StatefulWidget {
//   @override
//   _ToggleButtonTestState createState() => _ToggleButtonTestState();
// }
//
// class _ToggleButtonTestState extends State<ToggleButtonTest> {
//   late List<bool> isSelectedFont;
//   int _currentFontFamily = 0;
//   List<String> _fontFamily = [
//     'SansitaSwashed',
//     'DancingScript',
//     'AmanticSC',
//   ];
//   void initState() {
//     super.initState();
//     getisSelectedFont();
//     isSelectedFont = [true, false, false];
//   }
//
//   saveisSelectedFont() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       prefs.setStringList("isSelectedFont",
//           isSelectedFont.map((e) => e ? 'true' : 'false').toList());
//     });
//   }
//
//   getisSelectedFont() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       isSelectedFont = (prefs?.getStringList('isSelectedFont')?.map((e) => e == 'true' ? true : false)?.toList() ?? [true, false, false]);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Toggle Button Test'),
//       ),
//       body: Column(
//         children: [
//           Container(
//             margin: EdgeInsets.all(20),
//             child: ToggleButtons(
//               borderRadius: BorderRadius.circular(6),
//               children: <Widget>[
//                 // first toggle button
//                 Padding(
//                   padding: const EdgeInsets.only(right: 15, left: 15),
//                   child: Text(
//                     'font-1',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//                 // second toggle button
//                 Padding(
//                   padding: const EdgeInsets.only(right: 15, left: 15),
//                   child: Text(
//                     'font-2',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//                 // third toggle button
//                 Padding(
//                   padding: const EdgeInsets.only(right: 15, left: 15),
//                   child: Text(
//                     'font-3',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ),
//               ],
//               // logic for button selection below
//               onPressed: (int index) {
//                 setState(() {
//                   for (int i = 0; i < isSelectedFont.length; i++) {
//                     isSelectedFont[i] = i == index;
//                   }
//                   _currentFontFamily = index;
//                   saveisSelectedFont();
//                 });
//               },
//               isSelected: isSelectedFont,
//             ),
//           ),
//           Expanded(
//             child: Center(
//               child: Text(
//                 'This is the answer..',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontFamily: _fontFamily[_currentFontFamily],
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }