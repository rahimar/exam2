import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Bag',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ShoppingCartPage(),
    );
  }
}

class ShoppingCartPage extends StatefulWidget {
  @override
  State<ShoppingCartPage>  createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  int itemCount = 0;
  double itemPrice = 10.0; // Change the item price as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bag'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  'Pullover',
                  style: TextStyle(fontSize: 30.0),
                ),
                SizedBox(width: 10.0),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  'Color: Black',
                  style: TextStyle(fontSize: 10.0),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Size: L',
                  style: TextStyle(fontSize: 10.0),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      itemCount = itemCount > 0 ? itemCount - 1 : 0;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                Text(
                  '1',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(Icons.add),

                  onPressed: () {
                    setState(() {
                      itemCount++;
                      if (itemCount == 5) {

                      }
                    });
                  },
                ),
                SizedBox(width: 60.0),
                Text(
                  '\$ 10',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
            SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  'T-Shirt',
                  style: TextStyle(fontSize: 30.0),
                ),
                SizedBox(width: 10.0),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  'Color: Gray',
                  style: TextStyle(fontSize: 10.0),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Size: L',
                  style: TextStyle(fontSize: 10.0),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      itemCount = itemCount > 0 ? itemCount - 1 : 0;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                Text(
                  '1',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      itemCount++;
                      if (itemCount == 5) {

                      }
                    });
                  },
                ),
                SizedBox(width: 60.0),
                Text(
                  '\$ 10 ',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),

            SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  'Sport Dress',
                  style: TextStyle(fontSize: 30.0),
                ),
                SizedBox(width: 10.0),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Text(
                  'Color: Blue',
                  style: TextStyle(fontSize: 10.0),
                ),
                SizedBox(width: 10.0),
                Text(
                  'Size: M',
                  style: TextStyle(fontSize: 10.0),
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    setState(() {
                      itemCount = itemCount > 0 ? itemCount - 1 : 0;
                    });
                  },
                ),
                SizedBox(width: 10.0),
                Text(
                  '1',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(width: 10.0),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    setState(() {
                      itemCount++;
                      if (itemCount == 5) {
                        Fluttertoast.showToast(
                          msg: "You have added 5 items to your bag!",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                        );
                      }
                    });
                  },
                ),
                SizedBox(width: 60.0),
                Text(
                  '\$ 10 ',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),


            SizedBox(height: 60.0),
            Text(
              'No. of Items: $itemCount',
              style: TextStyle(fontSize: 20.0),
            ),
            Text(
              'Total Amount: \$${(itemCount * itemPrice).toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: "Congratulations! You have checked out successfully.",
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.BOTTOM,
                );
              },
              child: Text('CHECK OUT'),
            ),
          ],
        ),
      ),
    );
  }
}