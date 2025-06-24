import 'package:flutter/material.dart' hide SearchBar;
import 'package:flutter/services.dart';
import 'package:zomato_app/components/cuisine_list.dart';
import 'package:zomato_app/components/filter_list.dart';
import 'package:zomato_app/components/search_bar.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool isVegMode = true;

  void toggleVegMode(bool value) {
    setState(() {
      isVegMode = value;
    });
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: const Color.fromARGB(255, 241, 175, 197),
        systemNavigationBarColor: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 150,
                padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 241, 175, 197),
                  image: DecorationImage(
                    image: AssetImage('lib/assets/white_stars.png'),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    size: 20,
                                  ),
                                  Text(
                                    'Mp Krishna Mansion',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_drop_down_outlined,
                                    color: Colors.white,
                                    size: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              RichText(
                                text: TextSpan(
                                  text:
                                      'Feet Rd, KHB Colony, 5th Block, Kor...',

                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  iconSize: 20,
                                ),
                                icon: Icon(Icons.wallet_outlined),
                              ),
                              IconButton(
                                onPressed: () {},
                                style: IconButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: CircleBorder(),
                                  iconSize: 20,
                                ),
                                icon: Icon(Icons.person_outline),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SearchBar(
                      isVegMode: isVegMode,
                      toggleVegMode: toggleVegMode,
                    ),
                  ],
                ),
              ),
              Container(
                height: 125,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('lib/assets/offer_banner.png'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(8.0), child: CuisineList()),
              SizedBox(height: 50, child: FilterList()),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Text(
                  textAlign: TextAlign.left,
                  'E X P L O R E  M O R E',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
