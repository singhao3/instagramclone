// #search_screen.dart

// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class SearchScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: ConstrainedBox(
//         constraints: BoxConstraints(
//           maxHeight: MediaQuery.of(context).size.height,
//         ),
//         child: DefaultTabController(
//           length: 8,
//           child: Scaffold(
//             appBar: AppBar(
//               backgroundColor: Colors.white,
//               elevation: 0.0,
//               title: SearchBar(),
//               bottom: TabBar(
//                 unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
//                 labelStyle: TextStyle(fontWeight: FontWeight.w700),
//                 indicatorPadding: EdgeInsets.zero,
//                 labelColor: Colors.black,
//                 physics: ClampingScrollPhysics(),
//                 unselectedLabelColor: Colors.black,
//                 indicatorColor: Colors.white,
//                 tabs: [
//                   CustomTab(
//                     label: "IGTV",
//                   ),
//                   CustomTab(label: "Travel"),
//                   CustomTab(label: "Architecture"),
//                   CustomTab(label: "Decor"),
//                   CustomTab(label: "Style"),
//                   CustomTab(label: "Food"),
//                   CustomTab(label: "Art"),
//                   CustomTab(label: "TV & Movies"),
//                 ],
//                 isScrollable: true,
//               ),
//             ),
//             body: TabBarView(physics: ClampingScrollPhysics(), children: [
//               Container(
//                 height: MediaQuery.of(context).size.height,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Image(
//                                 fit: BoxFit.cover,
//                                 height:
//                                     MediaQuery.of(context).size.height / 5.4,
//                                 width: MediaQuery.of(context).size.width / 3,
//                                 image: NetworkImage(
//                                     "https://images.unsplash.com/photo-1586996157548-baa18d7d358f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8YWV1NnJMLWo2ZXd8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
//                             SizedBox(height: 2),
//                             Image(
//                                 fit: BoxFit.cover,
//                                 height:
//                                     MediaQuery.of(context).size.height / 5.4,
//                                 width: MediaQuery.of(context).size.width / 3,
//                                 image: NetworkImage(
//                                     "https://images.unsplash.com/photo-1611756674996-fc1b1ed07c9b?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60https://images.unsplash.com/photo-1611756674996-fc1b1ed07c9b?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMxfHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
//                           ],
//                         ),
//                         SizedBox(width: 2),
//                         Image(
//                             fit: BoxFit.cover,
//                             height:
//                                 (MediaQuery.of(context).size.height / 2.7) + 2,
//                             width:
//                                 MediaQuery.of(context).size.width * 2 / 3 - 2,
//                             image: NetworkImage(
//                                 "https://images.unsplash.com/photo-1502989642968-94fbdc9eace4?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8NnNNVmpUTFNrZVF8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"))
//                       ],
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         Image(
//                             fit: BoxFit.cover,
//                             height:
//                                 (MediaQuery.of(context).size.height / 2.7) + 2,
//                             width:
//                                 MediaQuery.of(context).size.width * 2 / 3 - 2,
//                             image: NetworkImage(
//                                 "https://images.unsplash.com/photo-1577922163167-850ea958ee5e?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfFM0TUtMQXNCQjc0fHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
//                         SizedBox(width: 2),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Image(
//                                 fit: BoxFit.cover,
//                                 height:
//                                     MediaQuery.of(context).size.height / 5.4,
//                                 width: MediaQuery.of(context).size.width / 3,
//                                 image: NetworkImage(
//                                     "https://images.unsplash.com/photo-1605311121246-8d63e4e2544a?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDZ8X2hiLWRsNFEtNFV8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
//                             SizedBox(height: 2),
//                             Image(
//                                 fit: BoxFit.cover,
//                                 height:
//                                     MediaQuery.of(context).size.height / 5.4,
//                                 width: MediaQuery.of(context).size.width / 3,
//                                 image: NetworkImage(
//                                     "https://images.unsplash.com/photo-1611512056135-d2c6040bb083?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDM4fF9oYi1kbDRRLTRVfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               Center(
//                 child: Text("Couldn't Refresh Feed"),
//               ),
//               Center(
//                   child: Text(
//                 "Couldn't Refresh Feed",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               )),
//               Center(
//                   child: Text(
//                 "Couldn't Refresh Feed",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               )),
//               Center(
//                   child: Text(
//                 "Couldn't Refresh Feed",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               )),
//               Center(
//                   child: Text(
//                 "Couldn't Refresh Feed",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               )),
//               Center(
//                   child: Text(
//                 "Couldn't Refresh Feed",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               )),
//               Center(
//                   child: Text(
//                 "Couldn't Refresh Feed",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               )),
//             ]),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class CustomTab extends StatelessWidget {
//   final String label;
//   const CustomTab({
//     Key? key,
//     required this.label,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 8),
//       padding: EdgeInsets.symmetric(horizontal: 13),
//       height: 26,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5),
//           border: Border.all(
//             color: Colors.grey,
//           )),
//       child: Tab(
//         text: label,
//       ),
//     );
//   }
// }

// class SearchBar extends StatefulWidget {
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }

// class _SearchBarState extends State<SearchBar> {
//   TextEditingController _controller = new TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.end,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           SizedBox(height: 10),
//           Flexible(
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 8),
//               margin: EdgeInsets.only(top: 8, right: 24),
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.grey.shade200),
//                   color: Colors.grey.shade200,
//                   borderRadius: BorderRadius.circular(8)),
//               child: TextField(
//                 controller: _controller,
//                 decoration: InputDecoration(
//                     isDense: true,
//                     hintText: "Search",
//                     border: InputBorder.none,
//                     hintStyle: TextStyle(color: Colors.grey),
//                     icon: Icon(
//                       Icons.search,
//                       color: Colors.grey.shade500,
//                       size: 25,
//                     )),
//               ),
//             ),
//           ),
//           Icon(
//             Icons.instagram,
//             size: 25,
//             color: Colors.black,
//           )
//         ],
//       ),
//     );
//   }
// }