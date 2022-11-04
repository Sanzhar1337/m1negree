import 'package:flutter/material.dart';

class BalanceWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  'My Balance',
                  style: TextStyle(
                    color: Color(0xff228B22),
                    fontFamily: 'Regular',
                    fontSize: 16,
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Text(
                  '\$ 745.00',
                  style: TextStyle(
                    color: Color(0xff228B22),
                    fontFamily: 'Regular',
                    fontSize: 16,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff272829),
                    ),
                    child: Icon(
                      Icons.payments_outlined,
                      color: Color(0xff415EF6),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      'Add Money',
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Regular',
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff272829),
                    ),
                    child: Icon(
                      Icons.savings_outlined,
                      color: Color(0xff67E4D3),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      'Withdraw',
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Regular',
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff272829),
                    ),
                    child: Icon(
                      Icons.swap_horiz,
                      color: Color(0xffFD706B),
                      size: 32,
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text(
                      'Transfer',
                      style: TextStyle(
                        color: Colors.black54,
                        fontFamily: 'Regular',
                        fontSize: 14,
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
