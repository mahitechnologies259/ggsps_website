import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

// class LandingPage extends StatelessWidget {
//   List<Widget> pageChildren(double width) {
//     return <Widget>[
//       Container(
//         width: width,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "Website \nDevelopers",
//               style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 40.0,
//                   color: Colors.white),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 20.0),
//               child: Text(
//                 "We have taken each and every project handed over to us as a challenge, which has helped us achieve a high project success rate.",
//                 style: TextStyle(fontSize: 16.0, color: Colors.white),
//               ),
//             ),
//             MaterialButton(
//               color: Colors.white,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.all(Radius.circular(20.0))),
//               onPressed: () {},
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(
//                     vertical: 20.0, horizontal: 40.0),
//                 child: Text(
//                   "Our Packages",
//                   style: TextStyle(color: Colors.red),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20.0),
//         child: Image.asset(
//           "assets/images/lp_image.png",
//           width: width,
//         ),
//       )
//     ];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         if (constraints.maxWidth > 800) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: pageChildren(constraints.biggest.width / 2),
//           );
//         } else {
//           return Column(
//             children: pageChildren(constraints.biggest.width),
//           );
//         }
//       },
//     );
//   }
// }
final List<String> imgList = [
  "assets/carousel_slider/a.jpg",
  "assets/carousel_slider/b.jpg",
  "assets/carousel_slider/c.jpeg",
  ];

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(itemCount: imgList.length,
      itemBuilder: (BuildContext context,  int itemIndex, int pageViewIndex){
      final sliderImage = imgList[itemIndex];
      return buildImage(sliderImage, itemIndex, context);
      },
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
      ),
    );
  }

  Widget buildImage(String sliderImage, int itemIndex, context) {
    if (sliderImage == null) { return Text("Error img not loaded");}
    else {

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      color: Colors.grey,
      width: MediaQuery.of(context).size.width,
      child: Image.asset(sliderImage, fit: BoxFit.cover,),
    );}
  }
}