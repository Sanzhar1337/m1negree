import 'package:flutter/material.dart';
import 'package:m1negree/shape/curve_shape.dart';
import 'package:m1negree/utils/color.dart';
import 'package:m1negree/widget/balance_widget.dart';
import 'package:m1negree/widget/send_money.dart';
import 'package:m1negree/widget/store_widget.dart';

bool themeBool = true ;

class HomeScreen extends StatelessWidget {

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Colors.black,
      drawer: _buildDrawer(),
      body: SingleChildScrollView(
      padding: EdgeInsets.all(0),
      scrollDirection: Axis.vertical,
      child: Container(
        color: Color(0xff000000),
        child: Column(
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none, children: <Widget>[
                ClipPath(
                  child: Container(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).padding.top),
                    height: 250,
                    decoration: BoxDecoration(
                      gradient:
                          LinearGradient(colors: [colorApp, colorApp_100]),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () {
                                  _key.currentState?.openDrawer();
                                },
                                color: Colors.black,
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              Icon(
                                Icons.notifications,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.more_vert,
                                color: Colors.black,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.iconscout.com/icon/premium/png-256-thumb/black-man-2888342-2399431.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      'Sanzhar Bazarkhanov',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'Bold',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: Text(
                                      '+8(708)9010406',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontFamily: 'Regular',
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  clipper: CurveShape(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 140),
                  child: BalanceWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 340),
                  child: SendMoneyWidget(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 480),
                  child: StoreWidget(),
                )
              ],
            )
          ],
        ),
      ),
    ),
    );
  }

  _buildDrawer() {
    return ClipPath(
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color:Colors.black),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.red, Colors.blueGrey])),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage('https://cdn.iconscout.com/icon/premium/png-256-thumb/black-man-2888342-2399431.png'),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Sanzhar Bazarkhanov",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    "@sandar",
                    style: TextStyle(color: Colors.green, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(icon: Icons.home, title: "Home", onTap: () {  }),
                  _buildDivider(),
                  _buildRow(icon: Icons.person_pin, title: "Your profile", onTap: () {  }),
                  _buildDivider(),
                  _buildRow(icon: Icons.settings, title: "Settings", onTap: () {  }),
                  _buildDivider(),
                  _buildRow(icon: Icons.email, title: "Contact us", onTap: () {  }),
                  _buildDivider(),
                  _buildRow(icon: Icons.info_outline, title: "Help", onTap: () {  }),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: Colors.green,
    );
  }

  Widget _buildRow({required IconData icon, required String title, required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, color: Colors.green,),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(title, style: TextStyle(color: Colors.green),),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
