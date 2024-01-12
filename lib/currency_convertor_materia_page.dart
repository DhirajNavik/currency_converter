import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  // {
  // print('constrictor');
  // }

  // function -> create State
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();

  //  {
  // print('create state');
  // return
  // }
}

// mutable
class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("Init func");
  }

  @override
  Widget build(BuildContext context) {
    print("build fun");
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          width: 3.0,
          style: BorderStyle.solid,
          color: Colors.black,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
        borderRadius: BorderRadius.circular(20));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          // column -> top to bottom
          // top -> MainAxisAlignment
          // bottom -> CrossAxisAlignment
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                  color: Color.fromARGB(255, 255, 0, 0),
                  fontWeight: FontWeight.w900,
                  fontSize: 30),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                //
                controller: textEditingController,
                //
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.attach_money),
                  prefixIconColor: Colors.black,
                  hintText: "Please enter amount in USD : ",
                  hintStyle: const TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            // button
            // raised
            //normal

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  // print(result);
                  // build(context);
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },

                style: TextButton.styleFrom(
                    elevation: 15,
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: const Size(double.infinity, 50)),
                // ButtonStyle(
                //   elevation: MaterialStatePropertyAll(15),
                //   backgroundColor: MaterialStatePropertyAll(Colors.black),
                //   foregroundColor: MaterialStatePropertyAll(Colors.white),
                //   shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10))),
                //   minimumSize:
                //       MaterialStatePropertyAll(Size(double.infinity, 50)),
                // ),

                child: const Text(
                  "Click Me",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// class CurrencyConverterMaterialPagee extends StatelessWidget {
//   const CurrencyConverterMaterialPagee({super.key});

//   @override
//   // build context telling location
//   Widget build(BuildContext context) {
//     print("rebuild");
//     double result = 0;
//     final TextEditingController textEditingController = TextEditingController();
//     final border = OutlineInputBorder(
//         borderSide: const BorderSide(
//           width: 3.0,
//           style: BorderStyle.solid,
//           color: Colors.black,
//           strokeAlign: BorderSide.strokeAlignInside,
//         ),
//         borderRadius: BorderRadius.circular(20));

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey,
//         elevation: 0,
//         title: Text("Currency Converter"),
//         centerTitle: true,
//       ),
//       backgroundColor: Colors.grey,
//       body: Center(
//         child: Column(
//           // column -> top to bottom
//           // top -> MainAxisAlignment
//           // bottom -> CrossAxisAlignment
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               result.toString(),
//               style: const TextStyle(
//                   color: Color.fromARGB(255, 255, 0, 0),
//                   fontWeight: FontWeight.w900,
//                   fontSize: 30),
//             ),
//             Container(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 //
//                 controller: textEditingController,
//                 //
//                 decoration: InputDecoration(
//                   prefixIcon: const Icon(Icons.attach_money),
//                   prefixIconColor: Colors.black,
//                   hintText: "Please enter amount in USD : ",
//                   hintStyle: const TextStyle(color: Colors.black),
//                   filled: true,
//                   fillColor: Colors.white,
//                   focusedBorder: border,
//                   enabledBorder: border,
//                 ),
//                 style: const TextStyle(
//                   color: Colors.black,
//                   fontWeight: FontWeight.w400,
//                 ),
//                 keyboardType:
//                     const TextInputType.numberWithOptions(decimal: true),
//               ),
//             ),
//             // button
//             // raised
//             //normal

//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextButton(
//                 onPressed: () {
//                   result = double.parse(textEditingController.text) * 81;
//                   print(result);
//                   build(context);
//                 },

//                 style: TextButton.styleFrom(
//                     elevation: 15,
//                     backgroundColor: Colors.black,
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10)),
//                     minimumSize: const Size(double.infinity, 50)),
//                 // ButtonStyle(
//                 //   elevation: MaterialStatePropertyAll(15),
//                 //   backgroundColor: MaterialStatePropertyAll(Colors.black),
//                 //   foregroundColor: MaterialStatePropertyAll(Colors.white),
//                 //   shape: MaterialStatePropertyAll(RoundedRectangleBorder(
//                 //       borderRadius: BorderRadius.circular(10))),
//                 //   minimumSize:
//                 //       MaterialStatePropertyAll(Size(double.infinity, 50)),
//                 // ),

//                 child: const Text(
//                   "Click Me",
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
