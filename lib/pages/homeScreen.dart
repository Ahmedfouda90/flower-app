import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/pages/logInScreen.dart';
import 'package:untitled/pages/registerScreen.dart';
import '../provider/provider.dart';

import '../shared/colors.dart';
import '../shared/products.dart';
import 'checkOut.dart';
import 'detailsScreen.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // final instance = Provider.of<Cart>(context);

    return Scaffold(
      drawer: Drawer(
        child:
        Consumer<Cart>(
        builder: ((context, classInstencee, child) {
         return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/download.jpg'),
                  fit: BoxFit.cover,
                )),
/*
            currentAccountPicture: CircleAvatar(
              radius: 55,
              backgroundImage:
              AssetImage('assets/images/images.jpg'),
            ),
*/
            accountName: null, accountEmail: null,
         /*   accountName: Text(
              'Ahmed Fouda',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
                color: Colors.indigo,
              ),
            ),
            accountEmail: Text(
              'ahmedfouda@gmai.com',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),*/
          ),
          ListTile(
            title: Text('Home'),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('My Products'),
            leading: Icon(Icons.add_shopping_cart),
            onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => CheckOut(),),);
            },
          ),

          ListTile(
            title: Text('login screen'),
            leading: Icon(Icons.login),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
            },
          ),
          ListTile(
            title: Text('register screen'),
            leading: Icon(Icons.app_registration),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
            },
          ),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.exit_to_app),
            onTap: () {},
          ),
          ListTile(
            title: Text('About'),
            leading: Icon(Icons.help_center),
            onTap: () {},
          ),
          Spacer(
            flex: 1,
          ),
          Text('developed by  ahmed fouda'),
          SizedBox(
            height: 20,
          ),
        ],
      );
    }),
      ),),
      appBar: AppBar(
        backgroundColor: appbargreen,
        title: Text('Home'),
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
                    child: Text('${classInstencee.price.round()}',
                        textAlign: TextAlign.center),
                  ),
                ],
                // SizedBox(height: 20,),
              );
            }),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 33,
                childAspectRatio: 3 / 2,
                mainAxisExtent: 170),
            itemCount: items.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Details(
                        product: items[index],
                      ),
                    ),
                  );
                },
                child: GridTile(
                  footer: GridTileBar(
                    // backgroundColor: Color.fromARGB(66, 73, 172, 110),

                    /*Color.fromARGB(66, 73, 172, 110),*/
                    trailing: Consumer<Cart>(
                      builder: ((context, Cart, child) {
                        return IconButton(
                          color: Colors.blue,
                          /*Color.fromARGB(255, 62, 94, 70),*/
                          icon: Icon(Icons.add),
                          onPressed: () {
                            Cart.add(items[index]);
                          },
                        );
                      }),
                    ),
                    leading: Text(
                      ' \$ ${items[index].price}',
                    ),
                    title: Text(''),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                        items[index].imagePath),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
