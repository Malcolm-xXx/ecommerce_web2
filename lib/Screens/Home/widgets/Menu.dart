

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../constant.dart';



class Menubar extends StatefulWidget {

   Menubar({
    Key? key,
  }) : super(key: key);

  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  String selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: mainColor,
      child: Column(
        children: [
          Container(
            padding:EdgeInsets.all(DefaultPadding),
            constraints: const BoxConstraints(
              maxWidth: MaxWidth,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                   const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset("assets/logo/VIp-Vendor-Logo-e1623009267250.png"),
                      ),
                      AutoSizeText(
                        "Wellens-Gadgets",
                        maxLines: 1,
                        minFontSize: 16,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width >= 348
                              ? 22
                              : 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Expanded(
                          child: Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color:Colors.grey.withOpacity(0.3))
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(
                                  Icons.search,
                                  color:Colors.black,
                                ),

                                hintText: "Search",

                                hintStyle:
                                TextStyle (
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),

                                focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none),

                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide.none),

                              ),
                            ),
                          )
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon:Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 22,

                          ),
                        ),
                    ],
                  ),
                ),
                Padding(
                  padding:const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Headermenue(
                          press: () {
                            // showBottomSheet(
                            //   context: context,
                            //   builder: (BuildContext context) {
                            //    return DropdownButton(
                            //     value: selectedOption,
                            //     onChanged: (newValue) {
                            //       setState(() {
                            //         selectedOption = newValue.toString();
                            //       });
                            //     },
                            //     items: options.map((option) {
                            //       return DropdownMenuItem(
                            //         value: option,
                            //         child: Text(option),
                            //       );
                            //     }).toList(),
                            //   );
                            //   }
                            // );
                            DropdownButton(
                              value: selectedOption,
                              onChanged: (newValue) {
                                setState(() {
                                  selectedOption = newValue.toString();
                                });
                              },
                              items: options.map((option) {
                                return DropdownMenuItem(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                            );
                          },
                          title: 'Home',
                        ),

                        SizedBox(
                          width: 20.0,
                        ),
                        Headermenue(
                          press: () {},
                          title: 'Phones',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Headermenue(
                          press: () {},
                          title: 'Accessories',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Headermenue(
                          press: () {},
                          title: 'Electronics',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Headermenue(
                          press: () {},
                          title: 'About',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Headermenue(
                          press: () {},
                          title: 'Contact',
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                ),
              ],
            ),
          ),

        ],
      ),

    );
  }
}

// class Headermenue extends StatelessWidget {
//   const Headermenue({
//     Key? key, required this.title, required this.press,
//   }) : super(key: key);
//   final String title;
//   final VoidCallback press;
//
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: press,
//       child: Container(
//         child: Text (
//           title,
//           style: TextStyle(
//               fontWeight: FontWeight.w600,
//               fontSize: 16),
//         ),
//       ),
//     );
//   }
// }

class Headermenue extends StatefulWidget {
  final String title;
  final VoidCallback press;
  final bool isActive;
  const Headermenue(
      {Key? key,
        required this.title,
        required this.press,
        this.isActive = false})
      : super(key: key);

  @override
  _MenuItemsState createState() => _MenuItemsState();
}

class _MenuItemsState extends State<Headermenue> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: widget.press,
        onHover: (val) {
          setState(() {
            isHover = val;
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      color: widget.isActive == true
                          ? PrimaryColor
                          : isHover
                          ? PrimaryColor
                          : Colors.transparent,
                      width: 4))),
          child: Text(
            widget.title,
            style: TextStyle(
              fontWeight: widget.isActive == true
                  ? FontWeight.bold
                  : isHover
                  ? FontWeight.bold
                  : FontWeight.normal,
              fontSize: _size.width >= 370 ? 18 : 14,
              color: widget.isActive == true
                  ? PrimaryColor
                  : isHover
                  ? PrimaryColor
                  : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}