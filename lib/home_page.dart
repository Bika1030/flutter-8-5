import "dart:async";

import "package:flutter/material.dart";
import "package:my_first_app/card.dart";



// class HomePage extends StatelessWidget {
  
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text(  
//             "Button",
//           ),
//           onPressed: () {},
//         ),
        
//      ),
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({super.key});
   
  
  

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int navigationBarIndex = 0;

  void onTapNavigationItem(int idx){
    setState(() {
      navigationBarIndex = idx;
    });

  }

  List<String> texts = ["Мэдээ", "Нүүр","Профайл"];
 
  @override
  Widget build(BuildContext context) {
    
    return DefaultTabController(
      length: 3, 
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: List.generate(texts.length, (i) => Text(texts[i])),
          ),
        ),
      body:TabBarView(
        children: List.generate(texts.length, (i) => Text(texts[i])),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationBarIndex,
        onTap: onTapNavigationItem,
        selectedFontSize: 20,
        unselectedFontSize: 10,
        unselectedIconTheme: IconThemeData(size: 20),
        // backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: "Мэдээ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Нүүр",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Профайл",
          ),
        ],
      ),
      ),
    );
  }
}