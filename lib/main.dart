import 'package:currency_converter/currency_convertor_materia_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Type of widget
//StateLess W  - immutable
//StateFull W  - mutable
//inheritence W

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialPage());
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     // return const Text ('HelloWorld10',textDirection: TextDirection.ltr);
//     // return MaterialApp(home: Text('HElloWorld'));
//     // return MaterialApp(home: Scaffold(body:Text('HElloWorld')));
//     // return MaterialApp(home: Scaffold(body:Center(child: Text('HelloWorld'))));
//     return const MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.blueGrey,
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 '0',
//                 style: TextStyle(
//                   fontSize: 50,
//                   color: Colors.red,
//                   fontWeight: FontWeight.w900,
//                 ),
//               ),
//               TextField(
//                 style:
//                     TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
//                 decoration: InputDecoration(
//                   // label: Text('Please enter amonunt in inr : ',style: TextStyle(color: Colors.white),),
//                   hintText: 'Please enter amount in inr ',
//                   hintStyle: TextStyle(
//                     color: Colors.black,
//                   ),
//                   prefixIcon: Icon(Icons.attach_money),
//                   prefixIconColor: Colors.black,
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                         color: Colors.black,
//                         width: 2.0,
//                         style: BorderStyle.solid,
//                         strokeAlign: BorderSide.strokeAlignCenter),
//                     borderRadius: BorderRadius.all(Radius.circular(30)),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
