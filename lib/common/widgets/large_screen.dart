import 'package:clinic_app/common/widgets/custom_ralis.dart';
import 'package:clinic_app/layout/cubit/clinic_web_cubit.dart';
import 'package:clinic_app/modules/system/system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClinicWebCubit, ClinicWebState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = BlocProvider.of<ClinicWebCubit>(context);
        return Row(
          children: [
            LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: CustomRails(
                        items: cubit.railItems,
                        selectedIndex: cubit.selectedIndex,
                        onTap: (int index) {
                          cubit.changeNavIndex(index);
                        }),
                  ),
                ),
              );
            }),
            const VerticalDivider(
              thickness: 1,
              width: 1,
            ),
            Expanded(flex: 5, child: SystemInformation())
          ],
        );
      },
    );
  }
}
