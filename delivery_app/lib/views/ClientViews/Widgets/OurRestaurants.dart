import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/testdata/data.dart';
import 'package:delivery_app/testmodels/restaurant.dart';
import 'package:delivery_app/views/ClientViews/CartPage.dart';
//import 'package:delivery_app/models/Restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RestaurantsList extends StatefulWidget {
  String idclient;
  RestaurantsList({ required this.idclient});

  @override
  _RestaurantsListState createState() => _RestaurantsListState();
}

class _RestaurantsListState extends State<RestaurantsList> {
  _buildRestaurantList(BuildContext context, Restaurant restaurant,String idclient){
        return GestureDetector(
              onTap: ()=>Navigator.push(
                context,MaterialPageRoute(
                builder: (_) => Cartpage(restaurant: restaurant,idclient: idclient,))
                ),
              child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              decoration: BoxDecoration(
              color: Colour.white,
              borderRadius: BorderRadius.circular(15.0),
              border: Border.all(
                  width: 1.0,
                  color: Colour.gray,
                ),
              ),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:<Widget> [
                 ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Hero(
                        tag: restaurant.imageUrl,
                        child: Image(
                        height: 150.0,
                        width: 150.0,
                       image: AssetImage(restaurant.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                     child: Container(
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              restaurant.name,
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            //add the rating class below
                            //RatingStars(restaurant.rating),
                            SizedBox(height: 4.0),
                            Text(
                              restaurant.address,
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 4.0),
                          ]
                      )
                    ),
                  )
               ],
             ), 
            ),
        );
        }

  @override
  Widget build(BuildContext context) {
    //final restaurant = Provider.of<List<Restaurant>>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Our Restaurants',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.2,
              color: Colour.black,
            ),
          ),
        ),
        Container(
          height: 400.0,
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 2.0),
            scrollDirection: Axis.vertical,
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              Restaurant restaurant = restaurants[index];
              return  _buildRestaurantList(context, restaurant,widget.idclient);
             // return _buildRestaurantList(context, restaurant[index]);
            },
          ),
        ),
      ],
    );
  }
}