import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniflur/model/product.dart';

import '../detail_screen.dart';

class DetailMobilePage extends StatelessWidget {
  Product product;

  DetailMobilePage(this.product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.network(product.imageProducts),
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.deepOrange,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          FavoriteButton()
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                    left:32.0,
                    top: 12.0
                ),
                child: Text(
                    product.price,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Inder'
                    )
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 32.0,
                    top: 8.0
                ),
                child: Text(
                  product.title,
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 32.0,
                    right: 10.0,
                    top: 8.0
                ),
                child: Text(
                  product.subTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Inder'
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 16.0
                ),
                color: Color(0xFFECF0EF),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.0,
                          top: 6.0,
                          bottom: 6.0
                      ),
                      child: Container(
                        width: 64.0,
                        height: 64.0,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(product.imageSeller),
                                fit: BoxFit.fill
                            )
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: 16.0,
                            top: 6.0,
                            bottom: 6.0
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              product.storeName,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                    top: 4.0
                                )
                            ),
                            Container(
                              padding: EdgeInsets.all(6.0),
                              color: Color(0xFFCECECE),
                              child: Text(
                                product.city,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 8.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 12.0,
                    bottom: 12.0
                ),
                color: Color(0xFF52796F),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                          top: 32.0,
                          left: 16.0
                      ),
                      child: Text(
                        "Product Description",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: 16.0,
                            bottom: 16.0
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            product.description,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
