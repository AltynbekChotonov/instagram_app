import 'package:flutter/material.dart';
import 'package:intagram_app/tabs/feed_view.dart';
import 'package:intagram_app/tabs/reels_view.dart';
import 'package:intagram_app/tabs/target_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  //tabs
  final List<Widget> tabs = const [
    //reed tab
    Tab(
      icon: Icon(Icons.image, color: Colors.grey),
      //reels tab
    ),
    Tab(
      icon: Icon(Icons.video_collection, color: Colors.grey),
    ),
    //target tabs
    Tab(
      icon: Icon(Icons.bookmark, color: Colors.grey),
    ),
  ];

  // tab bar view
  // ignore: non_constant_identifier_names
  final List<Widget> TabBarViews = const [
    // feed view
    FeedView(),
    // reels view
    ReelsView(),
    // target view
    TargetView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: ListView(
            children: [
              const SizedBox(height: 10),
              // profil details
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '364',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'following',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                          image: const DecorationImage(
                            image: AssetImage('/images/mobileLogo.png'),
                            fit: BoxFit.fill,
                          )),
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '21.2k',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'following',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // name
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Altynbek Bekmoldo uulu',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('|'),
                  Text(
                    'FLUTTER Developer',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              //blog
              Text(
                'Ui designer + programmer + youtube',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                ' youtube.com/ITMobile Company',
                style: TextStyle(
                    color: Colors.blue[500], fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text('Edit Profile'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Center(
                          child: Text(
                            'Contact',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // tabBar
              TabBar(
                tabs: tabs,
              ),
              // tab bar view
              SizedBox(height: 1000, child: TabBarView(children: TabBarViews))
            ],
          ),
        ));
  }
}
