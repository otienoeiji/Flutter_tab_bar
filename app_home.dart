import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(),
        body: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                controller: tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: Colors.green,
                indicatorWeight: 3,
                unselectedLabelColor: Colors.black26,
                labelColor: Colors.green,
                labelPadding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                labelStyle: const TextStyle(
                  fontSize: 15,
                  color: Color(0xff380808),
                  
                ),
                isScrollable: true,
                tabs: const <Widget>[
                  Text(
                    'Home',
                  ),
                  Text(
                    'Messages',
                  ),
                  // Text(
                  //   'Archives',
                  // ),
                  // Text(
                  //   'Archives',
                  // ),
                ],
              ),
            ),
            Flexible(
              child: TabBarView(
                controller: tabController,
                children: const <Widget>[
                  Scaffold(),
                  Scaffold(),
                  // Scaffold(),
                  // Scaffold(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.create,
          ),
        ),
      ),
    );
  }
}
