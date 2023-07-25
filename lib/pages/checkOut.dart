import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';
import '../shared/colors.dart';

class CheckOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final instance = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbargreen,
        title: Text('checkout'),
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
      body: Column(
        children: [
          SingleChildScrollView(
            child: SizedBox(
              height: 550,
              child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: instance.selectedProducts.length,
                  itemBuilder: (context, int index) {
                    return Card(
                      child: ListTile(
                        subtitle: Text(
                            '${instance.selectedProducts[index].price} _ ${instance.selectedProducts[index].location}'),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(
                              instance.selectedProducts[index].imagePath),
                        ),
                        title: Text('${instance.selectedProducts[index].name}'),
                        trailing: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            instance.remove(instance.selectedProducts[index]);
                          },
                        ),
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(pink),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(12),
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            onPressed: () {},
            child: Text(
              'Pay  \$${instance.price}',
              style: TextStyle(
                fontSize: 19,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
