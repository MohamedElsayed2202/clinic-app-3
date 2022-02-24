import 'package:clinic_app/common/constants/style.dart';
import 'package:clinic_app/common/widgets/custom_input.dart';
import 'package:clinic_app/common/widgets/custom_radio.dart';
import 'package:clinic_app/layout/cubit/clinic_web_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LogInPage extends StatelessWidget {
  LogInPage({Key? key}) : super(key: key);
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClinicWebCubit, ClinicWebState>(
        builder: (context, state) {
          var cubit = BlocProvider.of<ClinicWebCubit>(context);
          return Scaffold(
            backgroundColor: Colors.blue,
            appBar: AppBar(
              elevation: 0,
              title: const Text('Clinic management system'),
            ),
            body: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .706,
                child: Card(
                  color: Colors.white,
                  elevation: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * .5,
                        height: MediaQuery.of(context).size.height * .6,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          color: Colors.red,
                          image: DecorationImage(image: AssetImage('assets/images/image.jpg'),fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .2,
                        height: MediaQuery.of(context).size.height * .6,
                        child: LayoutBuilder(builder: (context,constraints){
                          return SingleChildScrollView(
                            child: ConstrainedBox(
                              constraints: BoxConstraints(minHeight: constraints.maxHeight),
                              child: IntrinsicHeight(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20),
                                      child: Text(
                                        'Login',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline3!
                                            .copyWith(color: dark),
                                      ),
                                    ),
                                    Form(
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                          children: [
                                            CustomInput(
                                              controller: email,
                                              hint: 'Enter your email',
                                              suffix: const Icon(Icons.person),
                                              inputAction: TextInputAction.next,
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Email can\'t be empty';
                                                } else if (!RegExp(
                                                    "^[a-zA-Z0-9]+@[a-zA-Z0-9]+.[a-z]")
                                                    .hasMatch(value)) {
                                                  return 'Enter a valid Email.. \n it must not include space or - or _ or / ';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              obscureText: false,
                                            ),
                                            const SizedBox(
                                              height: 20.0,
                                            ),
                                            CustomInput(
                                              controller: password,
                                              suffix: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.visibility),
                                              ),
                                              hint: 'Enter your password',
                                              validator: (value) {
                                                if (value!.isEmpty) {
                                                  return 'Password can\'t be empty';
                                                } else if (value.length < 6) {
                                                  return 'Password must be more than 6 letters';
                                                } else {
                                                  return null;
                                                }
                                              },
                                              obscureText: true,
                                            ),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            const Text('Login as'),
                                            Wrap(
                                              children: [
                                                CustomRadio(
                                                    title: 'Admin',
                                                    value: 0,
                                                    groupValue: cubit.radioSelected,
                                                    onChange: (int? value){
                                                      cubit.changeRadioSelection(value!);
                                                    }),
                                                CustomRadio(
                                                    title: 'Doctor',
                                                    value: 1,
                                                    groupValue: cubit.radioSelected,
                                                    onChange: (int? value){
                                                      cubit.changeRadioSelection(value!);
                                                    }),
                                                CustomRadio(
                                                    title: 'Receptionist',
                                                    value: 2,
                                                    groupValue: cubit.radioSelected,
                                                    onChange: (int? value){
                                                      cubit.changeRadioSelection(value!);
                                                    })
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        listener: (context, state) {});
  }
}
