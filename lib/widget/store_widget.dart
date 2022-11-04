import 'package:flutter/material.dart';

class StoreWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text(
                  'STORES',
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
          Container(
            height: 150,
            margin: EdgeInsets.only(bottom: 20),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width - 120,
                  decoration: BoxDecoration(
                    color: Color(0xff272829),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 110,
                        decoration: BoxDecoration(
                          color: Color(0xff272829),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8),
                              topRight: Radius.circular(8)),
                          image: DecorationImage(
                              image: NetworkImage('https://d33wubrfki0l68.cloudfront.net/913f67eda89e10eedbadbef01ca93f09ef8fc54e/53e39/static/caa67b97758c20ad6c1ca9bbf91be2f7/e018d/ethereum-logo-landscape-purple-purple.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            "Ethereum",
                            style: TextStyle(
                              color: Color(0xff228B22),
                              fontSize: 16,
                              fontFamily: 'Regular',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xff272829),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 110,
                        width: MediaQuery.of(context).size.width - 120,
                        decoration: BoxDecoration(
                          color: Color(0xff272829),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://d33wubrfki0l68.cloudfront.net/913f67eda89e10eedbadbef01ca93f09ef8fc54e/53e39/static/caa67b97758c20ad6c1ca9bbf91be2f7/e018d/ethereum-logo-landscape-purple-purple.png'),
                              fit: BoxFit.fill),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          color: Colors.transparent,
                          child: Text(
                            "Ethereum",
                            style: TextStyle(
                              color: Color(0xff228B22),
                              fontSize: 16,
                              fontFamily: 'Regular',
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
