import 'package:flutter/material.dart';
import 'package:ucha/presentation/base/base_view.dart';
import 'package:ucha/presentation/home/home_view_model.dart';
import 'package:ucha/presentation/home/widgets.dart/description.dart';
import 'package:ucha/presentation/widgets/buttons/app_button.dart';
import 'package:ucha/presentation/widgets/unfocus_widget.dart';
import 'package:ucha/utils/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return UnfocusWidget(
      child: Scaffold(
          body: BaseView<HomeViewModel>(
              model: HomeViewModel(),
              onModelReady: (model) => model.init(),
              builder: (context, model, _) {
                return SingleChildScrollView(
                  child: Container(
                    height: size.height,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
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
                                        fontSize: 50,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ],
                            ),
                           const SizedBox(height: 30,),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                child: Text("WB calculator".toUpperCase(), style: AppTextStyle.subTitle(color: Colors.black.withOpacity(.7)),),
                              ),
                            DescriptionForm(),
                            ],
                           ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(top: 20, right: 20, bottom: size.height * .07, left:  20),
                          child: AppButton(
                            title: "Get Quote",
                            onTap: () {
                              print("Hey, you tapped me");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
