import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
    @required this.padding,
    @required this.radius,
    @required Color depositColor,
    @required Color withdrawColor,
    @required Color color00,
    @required Color color01,
    @required Color color10,
    @required Color color11,
    @required Color paymentsColor,
    @required Color paymentsColor1,
  })  : _depositColor = depositColor,
        _withdrawColor = withdrawColor,
        _color00 = color00,
        _color01 = color01,
        _color10 = color10,
        _color11 = color11,
        _paymentsColor = paymentsColor,
        _paymentsColor1 = paymentsColor1,
        super(key: key);

  final double padding;
  final double radius;
  final Color _depositColor;
  final Color _withdrawColor;
  final Color _color00;
  final Color _color01;
  final Color _color10;
  final Color _color11;
  final Color _paymentsColor;
  final Color _paymentsColor1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: EdgeInsets.only(left: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // appbar
            SafeArea(
              top: true,
              left: true,
              right: true,
              child: Container(
                height: 64.0,
                child: Row(
                  children: <Widget>[
                    // text: Wallet
                    Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    // spacer
                    Spacer(),

                    // right icon
                    Transform.rotate(
                      angle: 1.56,
                      child: IconButton(
                        onPressed: () {
                          print("on clicked : right icon in appbar");
                        },
                        icon: Icon(
                          Icons.tune,
                          size: 28.0,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // text: total price
            Container(
              height: 64.0,
              child: Row(
                children: <Widget>[
                  // left text: total text
                  Text(
                    "\$16,180.34",
                    style: TextStyle(
                      fontSize: 32.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // spacer
                  Spacer(),

                  // container box: Text: USD
                  Container(
                    margin: EdgeInsets.only(right: padding),
                    height: 32.0,
                    width: 64.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(radius),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "USD",
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // containers: deposit; withdraw
            Container(
              margin: EdgeInsets.only(right: padding),
              height: 64.0,
              child: Row(
                children: <Widget>[
                  // container: Text: deposit
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius),
                        color: _depositColor,
                      ),
                      child: Center(
                        child: Text(
                          "Deposit",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // spacer
                  SizedBox(width: padding),

                  // container: Text: withdraw
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(radius),
                        color: _withdrawColor,
                      ),
                      child: Center(
                        child: Text(
                          "Withdraw",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // list 1. cards
            Container(
              height: 200.0,
              child: Column(
                children: <Widget>[
                  // text: card - view all
                  Container(
                    margin: EdgeInsets.only(
                        top: padding, right: padding, bottom: padding),
                    height: 32.0,
                    child: Row(
                      children: <Widget>[
                        // text: Cards
                        Text(
                          "Cards",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        // spacer
                        Spacer(),

                        // text: view all
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: _depositColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // listview
                  Flexible(
                    fit: FlexFit.tight,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(bottom: padding),
                      shrinkWrap: true,
                      children: <Widget>[
                        // master card
                        Container(
                          padding: EdgeInsets.all(padding),
                          margin: EdgeInsets.only(right: padding),
                          width: 230.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius),
                            gradient: LinearGradient(
                              colors: [_color00, _color01],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.0,
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // text: bank name
                              Row(
                                children: <Widget>[
                                  // container: master card logo
                                  Container(
                                    margin: EdgeInsets.only(right: padding),
                                    height: 16.0,
                                    width: 28.0,
                                    child: Stack(
                                      children: <Widget>[
                                        // left circle container
                                        Positioned(
                                          top: 0,
                                          left: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: 16.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color:
                                                  Colors.red.withOpacity(0.80),
                                            ),
                                          ),
                                        ),

                                        // right circle container
                                        Positioned(
                                          top: 0,
                                          right: 0,
                                          bottom: 0,
                                          child: Container(
                                            width: 16.0,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.orange
                                                  .withOpacity(0.80),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Text: bank name
                                  Text(
                                    "Bank name".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),

                              // text: balance
                              Text(
                                "\$ 823,74.00",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              // text: account number
                              Row(
                                children: <Widget>[
                                  // text: account number
                                  Text(
                                    "**** 8293",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                  // spacer
                                  Spacer(),

                                  // text: expired date
                                  Text(
                                    "06/24",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // visa card
                        Container(
                          padding: EdgeInsets.all(padding),
                          margin: EdgeInsets.only(right: padding),
                          width: 230.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius),
                            gradient: LinearGradient(
                              colors: [_color10, _color11],
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.0,
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              // text: bank name
                              Row(
                                children: <Widget>[
                                  // text: visa card logo
                                  Text(
                                    "Visa".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.indigo,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                    ),
                                  ),

                                  // spacer
                                  SizedBox(width: padding),

                                  // Text: bank name
                                  Text(
                                    "Bank name".toUpperCase(),
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),

                              // text: balance
                              Text(
                                "\$ 335,90.55",
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                              // text: account number
                              Row(
                                children: <Widget>[
                                  // text: account number
                                  Text(
                                    "**** 8293",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),

                                  // spacer
                                  Spacer(),

                                  // text: expired date
                                  Text(
                                    "06/24",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // list 2. payments
            Container(
              height: 150.0,
              child: Column(
                children: <Widget>[
                  // text: payments
                  Container(
                    margin: EdgeInsets.only(
                        top: padding, right: padding, bottom: padding),
                    height: 32.0,
                    child: Row(
                      children: <Widget>[
                        // text: Payments
                        Text(
                          "Paymnets",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        // spacer
                        Spacer(),

                        // text: view all
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: _depositColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // listview
                  Flexible(
                    fit: FlexFit.tight,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(bottom: padding),
                      shrinkWrap: true,
                      children: <Widget>[
                        // fast food
                        Container(
                          padding: EdgeInsets.all(padding),
                          margin: EdgeInsets.only(right: padding),
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius),
                            color: _paymentsColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.0,
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              // icon in container
                              Container(
                                margin: EdgeInsets.only(right: padding),
                                width: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(radius / 2),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.local_pizza,
                                    size: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              // column
                              Flexible(
                                fit: FlexFit.tight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    // text: Fast Food
                                    Text(
                                      "Fast Food",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    // text: Fast Food
                                    Text(
                                      "Subway",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // text: price
                              Text(
                                "-\$12.50",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // coffeteria
                        Container(
                          padding: EdgeInsets.all(padding),
                          margin: EdgeInsets.only(right: padding),
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius),
                            color: _paymentsColor1,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.0,
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              // icon in container
                              Container(
                                margin: EdgeInsets.only(right: padding),
                                width: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(radius / 2),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.cloud_off_rounded,
                                    size: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              // column
                              Flexible(
                                fit: FlexFit.tight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    // text: Coffeteria
                                    Text(
                                      "Coffeteria",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    // text: Craftwork
                                    Text(
                                      "Craftwork",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // text: price
                              Text(
                                "-\$12.50",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // list 3. Transactions
            Container(
              height: 150.0,
              child: Column(
                children: <Widget>[
                  // text: Transactions
                  Container(
                    margin: EdgeInsets.only(
                        top: padding, right: padding, bottom: padding),
                    height: 32.0,
                    child: Row(
                      children: <Widget>[
                        // text: Transactions
                        Text(
                          "Transactions",
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        // spacer
                        Spacer(),

                        // text: view all
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 16.0,
                            color: _depositColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // listview
                  Flexible(
                    fit: FlexFit.tight,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(bottom: padding),
                      shrinkWrap: true,
                      children: <Widget>[
                        // fast food
                        Container(
                          padding: EdgeInsets.all(padding),
                          margin: EdgeInsets.only(right: padding),
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius),
                            color: _paymentsColor,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.0,
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              // icon in container
                              Container(
                                margin: EdgeInsets.only(right: padding),
                                width: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(radius / 2),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.access_alarm,
                                    size: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              // column
                              Flexible(
                                fit: FlexFit.tight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    // text: Fast Food
                                    Text(
                                      "Fast Food",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    // text: Fast Food
                                    Text(
                                      "Subway",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // text: price
                              Text(
                                "-\$12.50",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),

                        // coffeteria
                        Container(
                          padding: EdgeInsets.all(padding),
                          margin: EdgeInsets.only(right: padding),
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(radius),
                            color: _paymentsColor1,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                spreadRadius: 2.0,
                                blurRadius: 2.0,
                              )
                            ],
                          ),
                          child: Row(
                            children: <Widget>[
                              // icon in container
                              Container(
                                margin: EdgeInsets.only(right: padding),
                                width: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(radius / 2),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.hardware,
                                    size: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),

                              // column
                              Flexible(
                                fit: FlexFit.tight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    // text: Coffeteria
                                    Text(
                                      "Coffeteria",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),

                                    // text: Craftwork
                                    Text(
                                      "Craftwork",
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // text: price
                              Text(
                                "-\$12.50",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // placeholder
            Placeholder(),
            Placeholder(),
            Placeholder(),
          ],
        ),
      ),
    );
  }
}
