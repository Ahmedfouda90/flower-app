import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'package:untitled/shared/products.dart';
import '../provider/provider.dart';
import 'checkOut.dart';
import '../shared/colors.dart';

class Details extends StatefulWidget {
  Item product;

  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowMore = true;
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbargreen,
        title: Text('Details'),
        actions: [
          // AppBar(),
          Consumer<Cart>(
            builder: ((context, classInstencee, child) {
              return Row(
                children: [
                  Stack(
                    // alignment: Alignment.topLeft,
                    children: [
                      Container(
                        child: Text(
                          '${classInstencee.selectedProducts.length}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        // padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(211, 164, 255, 193),
                          shape: BoxShape.circle,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CheckOut()));
                        },
                        icon: Icon(Icons.add_shopping_cart),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text('${classInstencee.price}',
                        textAlign: TextAlign.center),
                  ),
                ],
                // SizedBox(height: 20,),
              );
            }),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('${widget.product.imagePath}'),
            //widget.product.imagePath
            SizedBox(
              height: 20,
            ),
            Text(
              ' \$ ${widget.product.price}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  // margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'New ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                RatingBar.builder(
                    itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                    minRating: 1,
                    updateOnDrag: true,
                    onRatingUpdate: (rating) => setState(() {
                          this.rating = rating;
                        })),

/*
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                  ],
                ),
*/
                SizedBox(
                  width: 0,
                ),
                Row(
                  children: [
/*
                    Icon(
                      Icons.edit_location,
                      size: 26,
                      color: Color.fromARGB(168, 3, 65, 27),
                    ),
*/
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      'rating ${rating.toInt()} ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Details :',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'flowers are one among the beautiful creations of God and are loved by all. It would be almost impossible to find someone who does not love the sight of a full bloom garden. Flowers are fragrant, beautiful and colourful, and keep your mind afresh. Describing a flower is not really difficult, but finding the best word to describe all that it portrays can be slightly challenging. Adjectives are words which are used to describe a noun or the nature of the noun. This article will provide you with some of the most common adjectives that can be used to describe the colour, fragrance and appearance of flowers.',
                style: TextStyle(fontSize: 20),
                maxLines: isShowMore ? 2 : null,
                overflow: TextOverflow.fade,
                textAlign: TextAlign.start,
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  isShowMore = !isShowMore;
                });
              },
              child: Text(
                isShowMore ? 'Show More ' : 'Show Less',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
