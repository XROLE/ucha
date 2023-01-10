import 'package:flutter/material.dart';
import 'package:ucha/presentation/base/base_view.dart';
import 'package:ucha/presentation/home/home_view_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: BaseView<HomeViewModel>(
        model: HomeViewModel(),
        onModelReady: (model) => model.init(),
        builder: (context, model, _) {
          return const Center(child: Text('Use Ucha Today'),);
        }
      ));
  }
}