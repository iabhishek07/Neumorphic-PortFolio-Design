import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'nm_box.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainCard(),
    );
  }
}

class MainCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mC,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    NMButton(icon: Icons.arrow_back),
                    NMButton(icon: Icons.menu),
                  ],
                ),
                AvatarImage(),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Walter White', 
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 10,),
                Text(
                  'Maharashtra, IN', 
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Mobile | Web | UI-UX ', 
                  textAlign: TextAlign.center, 
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    NMButton(
                      icon: FontAwesomeIcons.twitter
                    ),
                    SizedBox(width: 25),
                    NMButton(
                      icon: FontAwesomeIcons.linkedin
                    ),
                    SizedBox(width: 25),
                    NMButton(
                      icon: FontAwesomeIcons.medium
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  children: <Widget>[
                    SocialBox(
                      icon: FontAwesomeIcons.dribbble,
                      count: '35',
                      category: 'Shots',
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                      icon: FontAwesomeIcons.userAlt,
                      count: '1.5K',
                      category: 'Followers',
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: <Widget>[
                    SocialBox(
                      icon: FontAwesomeIcons.heart,
                      count: '5.1K',
                      category: 'Likes',
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                      icon: FontAwesomeIcons.user,
                      count: '485',
                      category: 'Following',
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  children: <Widget>[
                    SocialBox(
                      icon: FontAwesomeIcons.glassWhiskey,
                      count: '97',
                      category: 'Buckets',
                    ),
                    SizedBox(width: 15),
                    SocialBox(
                      icon: FontAwesomeIcons.folderOpen,
                      count: '7',
                      category: 'Projects',
                    ),
                  ],
                ),
                SizedBox(height: 90),
              ],
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.07,
              minChildSize: 0.07,
              maxChildSize: 0.4,
              builder: (BuildContext context, scroll){
                return Container(
                  decoration: nMbox,
                  child: ListView(
                    controller: scroll,
                    children: <Widget>[
                      Center(
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(15),
                              child: Icon(
                                Icons.share,
                                color: mR,
                              ),
                            ),
                            Text(
                              'Share',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'Credits to PlanetX on Dribbble\nfor this design',
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Container(
                              width: 225,
                              padding: EdgeInsets.all(10),
                              decoration: nMboxInvert,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.twitter,
                                    color: mR,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.linkedin,
                                    color: mR,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.whatsapp,
                                    color: mR,
                                  ),
                                  Icon(
                                    FontAwesomeIcons.instagram,
                                    color: mR,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 25),
                            FaIcon(
                              FontAwesomeIcons.copy,
                              color: Colors.pink.shade800,
                            ),
                            Text(
                              'Copy Link'
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class SocialBox extends StatelessWidget {
 final IconData icon;
 final String count;
 final String category;

 const SocialBox({this.icon, this.count, this.category});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: nMboxInvert,
        child: Row(
          children: <Widget>[
            FaIcon(
              icon,
              color: Colors.pink.shade800,
              size: 20,
            ),
            SizedBox(width: 8),
            Text(
              count,
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(width: 3),
            Text(
              category,
              
            )
          ],
        ),
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: nMbox,
      child: Container(
        decoration: nMbox,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/avatar.JPG'),
            ),
          ),
        ),
      ),
    );
  }
}

class NMButton extends StatelessWidget {
  final IconData icon;
  
  const NMButton({this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: nMbox,
      child: Icon(icon, color: mR),
    );
  }
}