import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

   return  Scaffold(
     appBar: AppBar(
       title: const Text('Happy New Year'),
       backgroundColor: Colors.black,
       foregroundColor: Colors.yellowAccent,
       elevation: 15,
       shadowColor: Colors.amber,
       //elevation: 10,
     ) ,
     drawer:  Drawer(

       child: ListView(
         // Add a ListView to the drawer. This ensures the user can scroll
         // through the options in the drawer if there isn't enough vertical
         // space to fit everything.
         padding: EdgeInsets.zero,
         children:   [
           const DrawerHeader(
             decoration: BoxDecoration(
               color: Colors.blueGrey,
             ),
             child: Text(
               'Menu',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 50,
               ),
             ),
           ),
        ListTile(
          title: const Text('Item 1',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          onTap: (){
            Navigator.pop(context);
          },
        ),

           ListTile(
             title: const Text('Item 2',
               style: TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
               ),
             ),
             onTap: (){
               Navigator.pop(context);
             },
           )
         ],

       ),



     ),
     body:  const Center(

       //color: Colors.white70,

       child: Text(
         'Welcome',
         style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 24,
         ),
       ),
     ),
     floatingActionButton: FloatingActionButton(
       onPressed: () {  },
       backgroundColor: Colors.black87,
       child: const Icon(Icons.add),

     ),
   );
  }

}