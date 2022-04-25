import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/painting.dart';
import 'MainPage.dart';
import 'NewPage.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBjqHUscxT8QV3D5U86sLL5E1nALSPVGuA",
      appId: "XXX",
      messagingSenderId: "XXX",
      projectId: "my-app-48e1f",
    ),
  );
  runApp(const MaterialApp(
    home: MainPage(),
  ));
}

class SearchScreen extends StatefulWidget {
  static const String id = 'search_screen';
  const SearchScreen({Key? key}) : super(key: key);
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  int _currentIndex = 0;

  final tabs = [
    const HomeScreen(),
    const Bookings(),
    const MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black],
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.transparent,
          items: const[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article_outlined),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      body: tabs[_currentIndex],
    );
  }
}

class Bookings extends StatefulWidget {
  const Bookings({Key? key}) : super(key: key);

  @override
  State<Bookings> createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('My Bookings & Plans',
        style: TextStyle(
        color: Colors.white,

            ),
          )
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: const Text('This is the Bookings page where user will see all sort of Bookings which are made by him.',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin:
                const EdgeInsets.symmetric(horizontal: 15, vertical:
                10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search for Services and packages",
                          hintStyle: TextStyle(
                            letterSpacing: 0.1,
                            fontSize: 14,
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ),

              CarouselSlider(
                items: [

                  //1st Image of Slider

                  InkWell(
                    onTap: () {
                      print('Hello');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("images/img8.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  //2nd Image of Slider

                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("images/img9.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("images/img10.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("images/img11.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: AssetImage("images/img12.jpeg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
              ),

              Container(
                child: const Text(
                    'Need for customers: As per State Government COVID guidelines,'
                        'customers need to be fully vaccinated and wear a mask throughout '
                        'the duration of service. ',

                    style: TextStyle(
                      fontSize: 12.0,
                    )
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                margin: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 10.0),
                color: Colors.white,
              ),

              Row(
                children: [
                  Expanded(
                    child: Container(
                      child: const Text(
                        'Personal Services',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.0,
                        ),
                      ),
                      color: Colors.white,
                      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 5.0),

                      margin: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                      height: 30,
                    ),
                  ),
                ],
              ),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                color: Colors.white,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 200.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                            ),
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 75,
                                  child: Image.asset('images/img2.png'),
                                ),

                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                                  height: 100,
                                  width: 75,
                                  child: const Text(
                                    'Salon for Women',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 200.0,

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                            ),
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 75,
                                  child: Image.asset('images/img7.png'),
                                ),

                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                                  height: 100,
                                  width: 75,
                                  child: const Text(
                                    'Spa for Women',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 200.0,

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                            ),
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 75,
                                  child: Image.asset('images/img3.png'),
                                ),

                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                                  height: 100,
                                  width: 75,
                                  child: const Text(
                                    'Hair,Skin & Nails',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 200.0,

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                            ),
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 75,
                                  child: Image.asset('images/img4.png'),
                                ),

                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                                  height: 100,
                                  width: 75,
                                  child: const Text(
                                    'Salon for Men',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),

                    Column(
                      children: [
                        SizedBox(
                          width: 75.0,
                          height: 200.0,

                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                            ),
                            onPressed: () {},
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  width: 75,
                                  child: Image.asset('images/img5.png'),
                                ),

                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 5.0),
                                  height: 100,
                                  width: 75,
                                  child: const Text(
                                    'Massage for Men',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                child: SizedBox(

                  width: 500,
                  height: 230,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[100],
                  ),

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Next()),
                      );
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset('images/img11.jpeg')
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('My Profile',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
        ),
      ),
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: const Text(
                      'Verified Customer',
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
                    child: const Text(
                      '',
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
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Text(
                      '+91 9137772979',
                      style: TextStyle(
                        color: Colors.grey[600],
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
                      margin: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 8.0),
                      padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                      child: Row(
                          children: [
                            const Icon(Icons.add_comment),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                              child: const Text(
                                'Help Center',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                          ],
                      ),
                      color: Colors.white,
                      height: 40,
                    ),
                ),
              ],
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add_comment),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                          child: const Text(
                            'Register As Partner',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add_comment),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                          child: const Text(
                            'Manage Address',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add_comment),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                          child: const Text(
                            'About Urban Company',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add_comment),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                          child: const Text(
                            'Share Urban Company',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add_comment),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                          child: const Text(
                            'Refer & Earn',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add_comment),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                          child: const Text(
                            'My Rating',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add_comment),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                          child: const Text(
                            'My Gift Cards',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 2.0),
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      children: [
                        const Icon(Icons.add_comment),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0.0),
                          child: const Text(
                            'My Wallet',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 13.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: Center(
                child: Container(
                  child: Text('Logout',
                  style: TextStyle(
                    color: Colors.red,
                    backgroundColor: Colors.white,
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

