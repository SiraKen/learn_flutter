import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: CupertinoColors.activeBlue,
          // primarySwatch: Colors.blue,
        ),
        // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        home: const MyOwnHomePage());
  }
}

class MyOwnHomePage extends StatefulWidget {
  const MyOwnHomePage({Key? key}) : super(key: key);

  @override
  State<MyOwnHomePage> createState() => _MyOwnHomePageState();
}

class _MyOwnHomePageState extends State<MyOwnHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    double _cardRadius = 8;
    double _cardPadding = 18;
    final double _statusBarHeight = MediaQuery.of(context).padding.top;

    // app data list
    var _appList = [
      {
        'title': 'Flutter',
        'subtitle':
            'Flutter is Google\'s UI toolkit for crafting high-quality native interfaces on iOS and Android in record time.',
        'image': 'assets/flutter.png',
        'color': CupertinoColors.activeBlue,
      },
      {
        'title': 'Dart',
        'subtitle':
            'Dart is a general-purpose programming language developed by Google.',
        'image': 'assets/dart.png',
        'color': CupertinoColors.activeGreen,
      },
      {
        'title': 'React',
        'subtitle':
            'React is a JavaScript library for building user interfaces.',
        'image': 'assets/react.png',
        'color': CupertinoColors.activeOrange,
      },
      {
        'title': 'Vue',
        'subtitle':
            'Vue.js is an open-source progressive JavaScript framework for building user interfaces.',
        'image': 'assets/vue.png',
        'color': CupertinoColors.systemPurple,
      },
      {
        'title': 'Angular',
        'subtitle':
            'Angular is a TypeScript-based open-source front-end web application platform led by the Angular Team at Google.',
        'image': 'assets/angular.png',
        'color': CupertinoColors.systemIndigo,
      },
      {
        'title': 'Flutter',
        'subtitle':
            'Flutter is Google\'s UI toolkit for crafting high-quality native interfaces on iOS and Android in record time.',
        'image': 'assets/flutter.png',
        'color': CupertinoColors.activeBlue,
      },
      {
        'title': 'Dart',
        'subtitle':
            'Dart is a general-purpose programming language developed by Google.',
        'image': 'assets/dart.png',
        'color': CupertinoColors.activeGreen,
      },
    ];

    final pages = <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 50, left: 18, right: 18),
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 18, bottom: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                'Tuesday, April 12',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              const Text(
                'Today',
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, height: 1.25),
              ),

              ///
              /// Card 1
              ///
              GestureDetector(
                onTap: () => {
                  setState(() {
                    _selectedIndex = 1;
                  })
                },
                child: Card(
                  margin: EdgeInsets.only(top: 18, bottom: 18),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_cardRadius)),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(_cardRadius),
                                topRight: Radius.circular(_cardRadius)),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1611162617213-7d7a39e9b1d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 240,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(_cardPadding),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Collection',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Text('Everyone\'s Favorites',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ),

              ///
              /// Card 2
              ///
              GestureDetector(
                onTap: () => {
                  setState(() {
                    _selectedIndex = 2;
                  })
                },
                child: Card(
                  margin: EdgeInsets.only(bottom: 18),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_cardRadius)),
                  child: Container(
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(_cardRadius),
                                topRight: Radius.circular(_cardRadius)),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1520271348391-049dd132bb7c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 240,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(_cardPadding),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'How to',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                Text('Light Up Your Photos',
                                    style: TextStyle(
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold)),
                                Text(
                                  'Give your shots a whole new hue.',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                      height: 1.5),
                                ),
                              ],
                            ),
                          )
                        ]),
                  ),
                ),
              ),

              ///
              /// Card 3
              ///
              GestureDetector(
                onTap: () => {
                  setState(() {
                    _selectedIndex = 3;
                  })
                },
                child: Card(
                  margin: EdgeInsets.only(bottom: 18),
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(_cardRadius)),
                  child: Container(
                      width: double.infinity,
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(_cardRadius)),
                            child: Image.network(
                              'https://images.unsplash.com/photo-1600210492493-0946911123ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: 420,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(24),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'The Basics',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  Text('Transform your home',
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey.shade800)),
                                ]),
                          )
                        ],
                      )),
                ),
              ),

              ///
              /// Card 4
              ///
              GestureDetector(
                onTap: () => {
                  setState(() {
                    _selectedIndex = 4;
                  })
                },
                child: Card(
                  margin: EdgeInsets.only(bottom: 18),
                  elevation: 5,
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(_cardPadding),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Now Trending',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          Text('Top games this week',
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold)),
                          // show app list below
                          Container(
                            height: 200,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: _appList.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 50,
                                  child: Center(
                                      child: Text(
                                          'Entry ${_appList[index]['title']}')),
                                );
                              },
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Center(child: Text('Page 2')),
      Center(child: Text('Page 3')),
      Center(child: Text('Page 4')),
      Center(child: Text('Page 5')),
    ];

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Flutter Demo Home Page'),
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.transparent,
      //   shadowColor: Colors.transparent,
      // ),
      body: pages[_selectedIndex],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: _selectedIndex,
        backgroundColor: CupertinoColors.white,
        activeColor: CupertinoColors.activeBlue,
        border: const Border(
            top: BorderSide(
                color: CupertinoColors.lightBackgroundGray, width: 0.0)),
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.today),
            label: 'Today',
          ),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.rocket_fill), label: 'Games'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.square_stack_3d_up_fill),
              label: 'Apps'),
          BottomNavigationBarItem(
              icon: Icon(Icons.videogame_asset_rounded), label: 'Arcade'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search), label: 'Search'),
        ],
      ),
    );
  }
}
