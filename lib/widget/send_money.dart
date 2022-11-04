import 'package:flutter/material.dart';

class SendMoneyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  'SEND MONEY TO',
                  style: TextStyle(
                    color: Color(0xff228B22),
                    fontSize: 16,
                    fontFamily: 'Regular',
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Text(
                  'VIEW ALL',
                  style: TextStyle(
                    color: Color(0xff228B22),
                    fontSize: 14,
                    fontFamily: 'Bold',
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  color: Color(0xff272829),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xff008000), Color(0xff228B22)],
                        ),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: Color(0xff272829),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        'New',
                        style: TextStyle(
                          color: Color(0xff228B22),
                          fontFamily: 'Regular',
                          fontSize: 14,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              recentMoney('https://cdn.iconscout.com/icon/premium/png-256-thumb/black-man-2888342-2399431.png'),
              recentMoney('https://cdn.iconscout.com/icon/premium/png-256-thumb/black-man-2888342-2399431.png'),
            ],
          )
        ],
      ),
    );
  }

  Container recentMoney(String imageUrl) {
    return Container(
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        color: Color(0xff272829),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                    imageUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              'Dias',
              style: TextStyle(
                color: Color(0xff228B22),
                fontFamily: 'Regular',
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
