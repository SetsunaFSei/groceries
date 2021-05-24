// import 'package:flutter/material.dart';
// import 'package:groceries/presentation/misc/AppColor.dart';
// import 'package:groceries/presentation/misc/AppStyle.dart';
// import 'package:groceries/presentation/widget/CelestialImage.dart';
// import 'package:groceries/presentation/widget/CelestialText.dart';

// class ProductSearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     CelestialImage celestialImage = CelestialImage();
//     CelestialText celestialText = CelestialText();
//     TextEditingController emailText = TextEditingController(text: '');
//     return Scaffold(
//       backgroundColor: AppColor.backgroundColorLight,
//       body: Column(
//         children: [
//           Expanded(
//             child: GridView.builder(
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                   crossAxisCount: 2,
//                   childAspectRatio: (4 / 1),
//                 ),
//                 itemCount: 7,
//                 itemBuilder: (context, int index) {
//                   return Card(
//                     color: AppColor.whiteColor,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8.0),
//                       side: BorderSide(
//                           width: 1, color: AppColor.yellowBackground),
//                     ),
//                     elevation: 2,
//                     child: InkWell(
//                       onTap: () {},
//                       child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               Expanded(
//                                   child: Padding(
//                                 padding: const EdgeInsets.all(8.0),
//                                 child: Align(
//                                   alignment: Alignment.topCenter,
//                                   child: Text(
//                                     'Tunai',
//                                     textAlign: TextAlign.center,
//                                     style: AppStyle.labelPrice,
//                                   ),
//                                 ),
//                               )),
//                             ],
//                           )),
//                     ),
//                   );
//                 }),
//           ),
//         ],
//       ),
//     );
//   }
// }
