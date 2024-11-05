import 'package:flutter/material.dart';
import 'package:food_delivery/screens/home_page_second.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> buttonTexts = ['ALL', 'Hot Dog', 'Pizza', 'Four', 'Five'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEdgeDragWidth: 30,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'DELIVER TO',
              style: TextStyle(
                  fontSize: 11,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              hint: Text(
                'Halal Lab office',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              items: [
                DropdownMenuItem(
                  value: 'Halal Lab office',
                  child: Container(
                    width: 140,
                    child: Text(
                      'Halal Lab office',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ),
              ],
              onChanged: (value) {},
              dropdownColor: Colors.white,
              iconDisabledColor: Colors.white,
            )
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Container(
            height: 50,
            width: 50,
            // padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: const Color.fromARGB(179, 214, 211, 211),
                shape: BoxShape.circle),
            child: IconButton(
              onPressed: () {
                // Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
          ),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor: Colors.transparent,
                          contentPadding: EdgeInsets.all(0),
                          content: Container(
                            width: 300,
                            height: 400,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage('assets/images/BG.png'),
                                    fit: BoxFit.cover)),
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Expanded(
                                  child: SizedBox(
                                    height: 20,
                                  ),
                                ),
                                Text(
                                  'Hurry Offers!',
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(height: 40),
                                Text(
                                  '#1243CD2',
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 25,
                                ),
                                Text(
                                  'Use the cupon get 25% discount',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                SizedBox(
                                  height: 22,
                                ),
                                Container(
                                  height: 64,
                                  width: 262,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Container(
                                      // height: 60,
                                      // width: 260,
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 232, 135, 16),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              )),
                                          child: Text(
                                            'GOT IT',
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 4, 32, 86),
                      image: DecorationImage(
                        image: AssetImage('assets/images/shopping-bag.png'),
                      )),
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.sizeOf(context).width,
        // height: 3500,
        child: IntrinsicHeight(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  children: [
                    Text('Hey Halal,  '),
                    Text(
                      'Good Afternoon!',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search_sharp,
                          color: Colors.grey,
                        )),
                    contentPadding: EdgeInsets.only(top: 40, left: 20),
                    hintText: 'Search dishes, restaurants',
                    hintStyle: TextStyle(fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Color(0xFFF1F5F9),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20),
                child: Row(
                  children: [
                    Text(
                      'All Categories',
                      style: TextStyle(fontSize: 20),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Text(
                        'See All',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage2(),
                            ),
                          );
                        },
                        icon: Icon(Icons.chevron_right),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(buttonTexts.length, (String) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      height: 60,
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/logo4.jpg'),
                                    ),
                                  ),
                                ),
                                Text(buttonTexts[String]),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                })),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      // height: 880,
                      padding: EdgeInsets.only(left: 7, right: 9),
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 20),
                            child: Row(
                              children: [
                                Text(
                                  'Open Restaurants',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 0),
                                  child: Text(
                                    'See All',
                                    style:
                                        TextStyle(fontWeight: FontWeight.w500),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.chevron_right),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 400,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo4.jpg'))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Rose Garden Restaurant',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo4.jpg'))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Rose Garden Restaurant',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo4.jpg'))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Rose Garden Restaurant',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo4.jpg'))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Rose Garden Restaurant',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo4.jpg'))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Rose Garden Restaurant',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    height: 250,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/logo4.jpg'))),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Rose Garden Restaurant',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ]),
                          ),
                        ],
                      )))
            ],
          ),
        ),
      )),
    );
  }
}
