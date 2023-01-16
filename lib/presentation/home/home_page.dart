import 'package:flutter/material.dart';
import 'package:ucha/presentation/base/base_view.dart';
import 'package:ucha/presentation/home/home_view_model.dart';
import 'package:ucha/presentation/widgets/buttons/app_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: BaseView<HomeViewModel>(
            model: HomeViewModel(),
            onModelReady: (model) => model.init(),
            builder: (context, model, _) {
              return SingleChildScrollView(
                child: SizedBox(
                  height: size.height,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: size.height * .3,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: Image.asset("assets/img/bg.png").image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: size.height * .3,
                            width: double.infinity,
                            color: Colors.black.withOpacity(.5),
                          ),
                          Container(
                            height: size.height * .3,
                            width: double.infinity,
                            child: const Center(
                                child: Text(
                              "Ucha",
                              style: TextStyle(
                                  fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold),
                            )),
                          ),
                        ],
                      ),
                      Container(
                        height: size.height * .7,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          Column(
                            children: [
                              TextFormField(),
                              TextFormField(),
                              TextFormField(),
                              TextFormField(),
                              TextFormField(),
                              TextFormField(),
                              TextFormField(),
                              TextFormField(),
                            ],
                          ),
                          Column(
                            children: [
                              AppButton(
                                title: "Get Quote",
                                onTap: () {
                                  print("Hey, you tapped me");
                                },
                              ),
                              const SizedBox(height: 50),
                            ],
                          )
                        ]),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
