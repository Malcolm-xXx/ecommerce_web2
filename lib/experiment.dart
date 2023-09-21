
// import 'package:flutter/material.dart';
//
// class DropDownButtonExample extends StatefulWidget {
//   @override
//   _DropDownButtonExampleState createState() => _DropDownButtonExampleState();
// }
//
// class _DropDownButtonExampleState extends State<DropDownButtonExample> {
//   String selectedOption = 'Option 1';
//   List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('DropDown Button Example'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Selected Option:',
//               style: TextStyle(fontSize: 16),
//             ),
//             SizedBox(height: 8),
//             Text(
//               selectedOption,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 24),
//             DropdownButton(
//               value: selectedOption,
//               onChanged: (newValue) {
//                 setState(() {
//                   selectedOption = newValue.toString();
//                 });
//               },
//               items: options.map((option) {
//                 return DropdownMenuItem(
//                   value: option,
//                   child: Text(option),
//                 );
//               }).toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToPosition() {
    _scrollController.animateTo(
      200.0, // change this to the position you want to scroll to
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _scrollToPosition,
        child: Icon(Icons.arrow_downward),
      ),
    );
  }
}
