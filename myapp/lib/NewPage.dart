import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  const Next({Key? key}) : super(key: key);

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
            title: const Text('New Page')
        ),
        body: ListView(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: SizedBox(

                  width: 500,
                  height: 250,
                  child: Center(
                      child: Column(
                        children: [
                          Image.asset('images/img11.jpeg')
                        ],
                      ),
                    ),
                  ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0,10.0,0,0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: const Text(
                        'Salon for Women',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: const Text(
                        'Up to 20% off on all packages',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: const Text(
                        'AC Service',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: Text(
                        'Flat Rs. 200 off',
                        style: const TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: const Text(
                        'Hair Studio for Women',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: Text(
                        'Up to 20% off',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: const Text(
                        'Massage for Men',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: Text(
                        'Up to 60%',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: const Text(
                        'Salon for men',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: Text(
                        'Haircut start at Rs. 249',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: const Text(
                        'Home Repairs',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 5.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: Text(
                        'Up to 10% off',
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 13.0,
                        ),
                      ),
                      color: Colors.white,
                      height: 30,
                    ),
                  ),
                ],
              ),

            ]
        )
    );
  }
}