import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var person = [
  {
    'name': 'Rafi',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Arif',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Sara',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Nina',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Kamal',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Hina',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Ishan',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Mona',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Zara',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Nabil',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Ayesha',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Farhan',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Laila',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Omar',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Sami',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Mariam',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Rahim',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Fatima',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Tariq',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
  {
    'name': 'Zainab',
    'image': 'https://images.pexels.com/photos/3792581/pexels-photo-3792581.jpeg?cs=srgb&dl=pexels-bertellifotografia-3792581.jpg&fm=jpg',
  },
  {
    'name': 'Usman',
    'image': 'https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg',
  },
];

class AppBarScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 4,
  child:  Scaffold(
    appBar: AppBar(
      title: Text('My App Bar'),
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
      titleSpacing: 20,
      leading: IconButton(
        icon: Icon(Icons.menu),
        color: Colors.white,
        onPressed: (){},
      ),
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.search), color: Colors.white,),
        IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none), color: Colors.white,),
      ],
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
         image: DecorationImage(
           image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs9gKZOQtPuPqNqtv4Sznwxk1FbV7qimmPOw&s'),
           fit: BoxFit.cover,
         ),
        ),
      ),
    bottom: TabBar(
      indicatorColor: Colors.white,
      labelColor: Colors.white60,
      unselectedLabelColor: Colors.white,

    tabs: [

      Tab(icon: Icon(Icons.home),text: 'Home'),
      Tab(icon: Icon(Icons.feed),text: 'Feed'),
      Tab(icon: Icon(Icons.person),text: 'profile'),
      Tab(icon: Icon(Icons.settings),text: 'Setting'),

      ],
      ),
     ),
      body: TabBarView(
        children: [
          buildGridView(), // Home Tab content
          buildGridView(), // Feed Tab content
          buildGridView(), // Profile Tab content
          buildGridView(),// Setting Tab content
        ],
      ),
    ),
   );
  }
// Method to build the GridView
  Widget buildGridView(){
   return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
          itemCount: person.length,
          itemBuilder: (context, index){
          return Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.0),
                  child: Image.network(
                    person[index]['image']!,
                    height: 80,
                    width: 70,// Use index to access the correct person in the list
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  person[index]['name']!, // Use index to access the correct name
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

          );
          },
      ),
   );
  }
}
/*
 // Method to build the GridView
  Widget buildGridView() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: 10, // Number of items
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Center(
              child: Text(
                'Item $index',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}*/