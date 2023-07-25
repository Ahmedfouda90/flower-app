

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/checkOut.dart';
import '../provider/provider.dart';


class Appbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // return /*Consumer<Cart>(
    //   builder: ((context, classInstencee, child) {*/
    final classInstencee = Provider.of<Cart>(context);
        return Row(
          children: [
            Stack(
              // alignment: Alignment.topLeft,
              children: [
                Positioned(
                  bottom: 24,
                  child: Container(
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
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckOut()));
                  },
                  icon: Icon(Icons.add_shopping_cart),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text('${classInstencee.price}', textAlign: TextAlign.center),
            ),
          ],
          // SizedBox(height: 20,),
        /*);
      }),*/
    );
  }
}
