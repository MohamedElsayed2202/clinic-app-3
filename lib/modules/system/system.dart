import 'package:clinic_app/common/constants/style.dart';
import 'package:flutter/material.dart';

class SystemInformation extends StatelessWidget {
  const SystemInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: Colors.grey,
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: TabBar(
                      labelColor: dark,
                      unselectedLabelColor: lightGrey,
                      indicatorColor: Colors.white,
                      tabs: const [
                        Tab(text: 'Clinic info',),
                        Tab(text: 'Clinic info',),
                        Tab(text: 'Clinic info',),
                      ]),
                ),
              ),
              Expanded(flex: 3,child: Container())
            ],
          ),
        ),

        Expanded(
          child: TabBarView(children: [
            Container(color:Colors.purple,child: Center(child: Text('DOGS'))),
            Container(color:Colors.lightBlue,child: Center(child: Text('CATS'))),
            Container(color:Colors.yellow,child: Center(child: Text('BIRDS'))),
          ]),
        )
      ],
    ));
  }
}
