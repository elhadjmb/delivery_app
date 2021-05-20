import 'package:delivery_app/constants/colours.dart';
import 'package:delivery_app/models/Restaurant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RestaurantsList extends StatelessWidget {
  _buildRestaurantList(BuildContext context, Restaurant restaurant){
        return Container(
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
             children:<Widget> [
               ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image(
                    height: 100.0,
                    width: 100.0,
                   image: AssetImage(restaurant.id),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
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
                )
             ],
           ), 
          );
        }

  @override
  Widget build(BuildContext context) {
    final restaurant = Provider.of<List<Restaurant>>(context);

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
          //define the height of the container here
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 10.0),
            scrollDirection: Axis.vertical,
            itemCount: restaurant.length,
            itemBuilder: (context, index) {
              return _buildRestaurantList(context, restaurant[index]);
            },
          ),
        ),
      ],
    );
  }
}