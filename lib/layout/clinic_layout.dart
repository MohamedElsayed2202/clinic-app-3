import 'package:clinic_app/common/constants/style.dart';
import 'package:clinic_app/common/widgets/large_screen.dart';
import 'package:clinic_app/common/helpers/responsiveness.dart';
import 'package:clinic_app/common/widgets/small_screen.dart';
import 'package:clinic_app/common/widgets/top_nav.dart';
import 'package:clinic_app/layout/cubit/clinic_web_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClinicLayout extends StatelessWidget {

  ClinicLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClinicWebCubit,ClinicWebState>(builder: (context,state){
      var cubit = BlocProvider.of<ClinicWebCubit>(context);
      return Scaffold(
        key: scaffoldKey,
        appBar: topNavigationBar(context, scaffoldKey),
        drawer: Drawer(
          child: ListView.builder(
            itemCount: cubit.sidNavTitles.length,
              itemBuilder: (context,index){
            return ListTileTheme(
              selectedColor: active,
              textColor: lightGrey,
              iconColor: lightGrey,
              child: ListTile(
                leading: Icon(cubit.sideNavIcons[index]),
                title: Text(cubit.sidNavTitles[index]),
                selected: cubit.selectedIndex == index,
                onTap: (){
                  cubit.changeNavIndex(index);
                },
              ),
            );
          }),
        ),
        body: const ResponsiveWidget(smallScreen: SmallScreen(),largeScreen: LargeScreen(),),
      );
    }, listener: (context,state){});
  }
}
