import 'package:bloc/bloc.dart';
import 'package:clinic_app/common/widgets/custom_radio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'clinic_web_state.dart';

class ClinicWebCubit extends Cubit<ClinicWebState> {
  ClinicWebCubit() : super(ClinicWebInitial());


  int selectedIndex = 0;
  int radioSelected = 0;

  List<NavigationRailDestination> railItems =  const [
    NavigationRailDestination(
      icon: Icon(Icons.info_outline),
      selectedIcon: Icon(Icons.info),
      label: Text('System Information'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.reorder_outlined),
      selectedIcon: Icon(Icons.reorder),
      label: Text('Daily appointment'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.flag_outlined),
      selectedIcon: Icon(Icons.flag),
      label: Text('Reports'),
    ),
    NavigationRailDestination(
      icon: Icon(Icons.people_outline),
      selectedIcon: Icon(Icons.people),
      label: Text('Patients'),
    ),
  ];

  List<String> sidNavTitles = [
    'System Information',
    'Daily appointment',
    'Reports',
    'Patients'
  ];

  List<IconData> sideNavIcons = [
    Icons.info,
    Icons.reorder,
    Icons.flag,
    Icons.people
  ];


  void changeNavIndex(int index){
    selectedIndex = index;
    emit(ClinicNavState());
  }

  void changeRadioSelection(int value){
    radioSelected = value;
    emit(RadioChangeState());
  }
}
