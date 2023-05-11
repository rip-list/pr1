// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:pr1/common/constants/app_colors.dart';
import 'package:pr1/common/usr_function/function.dart';
// import 'package:pr1/common/constants/main_button.dart';
import 'pream_body.dart';
// import 'package:pr1/common/constants/my_flutter_app_icons.dart';

class FloatBar extends StatelessWidget {
  const FloatBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: AppColors.primary,
        child: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height,
                assetsPath: "assets/img/img_home_page.jpg",
              ),
              pinned: true,
            ),
            // TODO скрол находится тут
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 1500.0,
                crossAxisSpacing: 40.0,
                // mainAxisSpacing: 450,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) =>
                    // ignore: prefer_const_constructors
                    PreamBody(),
                childCount: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;
  final String assetsPath;

  MySliverAppBar({required this.expandedHeight, required this.assetsPath});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          assetsPath,
          fit: BoxFit.cover,
        ),
        Container(
          width: 100,
          height: 200,
          alignment: Alignment.centerLeft,
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: const CustomButton(),
          ),
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          // left: MediaQuery.of(context).size.width / 4,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              color: AppColors.transparentblue,
              elevation: 10,
              shadowColor: Colors.cyan,
              child: SizedBox(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  style: TextStyle(
                    fontSize: 43,
                    fontFamily: 'Sensal',
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                  ), //TODO меняй потом на конструктор или нет, хз
                  "This site create server developer, plz, don`t hate ass it project ",
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  createState() => MyWidgetState();
}

class MyWidgetState extends State<CustomButton> {
  late String textButton;
  late bool switchUser;
  late Icon iconbar;

  @override
  initState() {
    super.initState();
    textButton = "SYSTEM";
    switchUser = true;
    iconbar = const Icon(Icons.alt_route_rounded);
  }

  void click() {
    switch (switchUser) {
      case true:
        textButton = 'VALERA';
        switchUser = false;
        iconbar = const Icon(Icons.account_box_rounded);
        break;
      case false:
        textButton = 'AlICE';
        switchUser = true;
        iconbar = const Icon(Icons.account_box_outlined);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: 300,
          height: 45,
          decoration: const BoxDecoration(
            color: AppColors.transparentpol,
            borderRadius: BorderRadius.all(
              Radius.circular(34),
            ),
          ),
          child: IconButton(
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(AppColors.white),
              backgroundColor: MaterialStatePropertyAll(AppColors.blue),
            ),
            onPressed: () {
              setState(() => click());
            },
            icon: iconbar,
            focusColor: AppColors.secondary,
            iconSize: 50,
            mouseCursor: MaterialStateMouseCursor.clickable,
          ),
        ),
        Text(
          textButton,
          style: const TextStyle(
              fontSize: 33, fontFamily: "Sensal", color: AppColors.violet),
        ),
        const Expanded(
          flex: 5,
          child: SizedBox(),
        ),
        Container(
          width: 150,
          height: 45,
          decoration: const BoxDecoration(
              color: AppColors.red,
              borderRadius: BorderRadius.all(Radius.circular(34))),
          child: const TextButton(
            onPressed: onPresedSwitchButton,
            child: Text("Удали сайт "),
          ),
        ),
      ],
    );
  }
}
