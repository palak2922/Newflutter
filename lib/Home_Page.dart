import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  int currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(vsync: this, length: 4);
    super.initState();
  }



  List<String> names = [
    'Rings',
    'Bangle',
    'Chain',
    'Necklace',
  ];



  List<String> img = [
    'images/bangle.png',
    'images/chain.jpg',
    'images/necklace.png',
    'images/ring.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, left: 15, bottom: 15),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('images/ico.png'),
                      backgroundColor: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 15.0, right: 15, bottom: 15),
                    child: Icon(Icons.shopping_cart_outlined),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              //===========================================================================Tab Bar Section
              Container(
                height: 45,
                child: TabBar(
                  physics: ScrollPhysics(),
                  onTap: (newIndex) {
                    print(newIndex);
                  },
                  unselectedLabelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                  labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: UnderlineTabIndicator(
                    insets: EdgeInsets.symmetric(horizontal: 16),
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.yellow,
                    ),
                  ),
                  isScrollable: true,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  tabs: <Widget>[
                    Tab(
                      text: 'Gold',
                    ),
                    Tab(
                      text: 'Diamond',
                    ),
                    Tab(
                      text: 'Platinum',
                    ),
                    Tab(
                      text: 'Silver',
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.yellow[700],
                thickness: 2,
              ),

              //============================================================================Tab Bar List View Section
              Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                height: 400,
                color: Colors.yellow[100],
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    //==========================================================================Gold cards

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              bottom: 20,
                              right: 10,
                            ),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage('images/jwel.jpg'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Check Our Latest \n Arrival',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                    Text(
                                      'Beeing Update with the latest\nproduct from us',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            width: 10,
                          );
                        },
                      ),
                    ),

                    //=============================================================================Diamond Cards

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              bottom: 20,
                              right: 10,
                            ),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage('images/jwel.jpg'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Check Our Latest \n Arrival',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                    Text(
                                      'Beeing Update with the latest\nproduct from us',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            width: 10,
                          );
                        },
                      ),
                    ),

                    //===========================================================================Platinum Cards

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              bottom: 20,
                              right: 10,
                            ),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage('images/jwel.jpg'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Check Our Latest \n Arrival',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                    Text(
                                      'Beeing Update with the latest\nproduct from us',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            width: 10,
                          );
                        },
                      ),
                    ),

                    //===========================================================================Silver Cards

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 20.0,
                              bottom: 20,
                              right: 10,
                            ),
                            child: Card(
                              elevation: 10,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Container(
                                height: 300,
                                width: 300,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                    image: AssetImage('images/jwel.jpg'),
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Check Our Latest \n Arrival',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25,
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                      indent: 20,
                                      endIndent: 20,
                                    ),
                                    Text(
                                      'Beeing Update with the latest\nproduct from us',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Container(
                            width: 10,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),



              //==================================================================================jwell type list

              SizedBox(height: 25,),

              Container(
                height: 150,
                child: ListView.separated(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        elevation: 10,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: CircleAvatar(
                          minRadius: 45,
                          backgroundImage: AssetImage('${img[index]}'),
                        ),
                      ),

                      SizedBox(height: 10,),
                      Text(
                        '${names[index]}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Container(width: 25,);
                },
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
