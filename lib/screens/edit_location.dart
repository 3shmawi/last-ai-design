import 'package:ai_design/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';

class EditLocation extends StatelessWidget {
  const EditLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '    Welcome Again',
                style: Theme.of(context)
                    .textTheme
                    .subtitle2!
                    .copyWith(fontSize: 30),
              ),
              Text(
                '         Please choose the location',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              const Expanded(
                child: Center(
                  child: DefaultDropDownButton(
                    text: 'Select the Location',
                    validateText: '',
                    items: [
                      '6  أكتوبر',
                      'الزمالك',
                      'مدينة نصر',
                    ],
                  ),
                ),
              ),
              const Expanded(
                child: Center(
                  child: DefaultDropDownButton(
                    text: 'Select the recently Location',
                    validateText: '',
                    items: [
                      '6  أكتوبر',
                      'الزمالك',
                      'مدينة نصر',
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: DefaultElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    header: 'next',
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
