import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:semasfiscalizacao/utils/DataProviders.dart';

import 'model/screen_models.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List<DrawerItemModel> drawerItems = getDrawerItems();

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    _tabController = TabController(length: drawerItems.length, vsync: this);
  }

  @override
  void setState(VoidCallback fn) {
    if (mounted) super.setState(fn);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Ordem de Fiscalização'),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.teal[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 100,
                    child: Center(
                      child: Text(
                        'FISCALIZAÇÃO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.separated(
              itemBuilder: (_, index) {
                return InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            drawerItems[index].icon,
                            color: Colors.teal,
                            size: 32,
                          ),
                          16.width,
                          Text(
                            drawerItems[index].title!,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.clip,
                            style: boldTextStyle(size: 16),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: context.iconColor,
                        size: 17,
                      ),
                    ],
                  ).paddingAll(16),
                );
              },
              separatorBuilder: (_, index) {
                return const Divider(
                  color: Colors.white,
                );
              },
              itemCount: drawerItems.length,
            ).expand(),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.teal[400],
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'SINCRONIZAR',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
