import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:wide_technologies_indonesia/constant/assets/assets_constant.dart';
import 'package:wide_technologies_indonesia/constant/color/color_app.dart';
import 'package:wide_technologies_indonesia/home/data/model/model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 50),
        height: 64,
        width: 64,
        child: FloatingActionButton.large(
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: () {},
          child: Transform.scale(
              scale: 1.7, child: Image.asset(AssetsConstant.qrisImage)),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 300,
              // alignment: Alignment.bottomCenter,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Good Afternoon, William',
                    style: TextStyle(fontSize: 20, color: ColorApp.blue),
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),

              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/header.png',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            const ListMenu(),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Current & Saving Account',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12, color: ColorApp.blue),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Image.asset(
                          AssetsConstant.eyeImage,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Balance',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: ColorApp.blue),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                children: [
                  CurrentAndSavingAccount(
                      title: 'Saving WIDE BLACK',
                      cardImage: AssetsConstant.cardBlackImage,
                      numberCard: '8763273698730329'),
                  CurrentAndSavingAccount(
                      title: 'Saving NOW',
                      cardImage: AssetsConstant.cardPurpleImage,
                      numberCard: '5312986422315312')
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                children: [
                  Text(
                    'Time Deposit',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(fontSize: 12, color: ColorApp.blue),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TimeDeposit(
                      title: 'Wiliam Nevelin',
                      cardImage: AssetsConstant.cardGreyImage,
                      numberCard: '549643487878 3628'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: ColorApp.white,
        selectedItemColor: ColorApp.blue,
        unselectedItemColor: ColorApp.grey,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        onTap: (value) {
          // Respond to item press.
        },
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: Image.asset(
                AssetsConstant.homeBottomImage,
                height: 20,
              )),
          BottomNavigationBarItem(
              label: 'Transaction',
              icon: Image.asset(
                AssetsConstant.transactionBottomImage,
                height: 20,
              )),
          BottomNavigationBarItem(label: '', icon: SizedBox()),
          BottomNavigationBarItem(
              label: 'Feed',
              icon: Image.asset(
                AssetsConstant.feedBottomImage,
                height: 20,
              )),
          BottomNavigationBarItem(
              label: 'Setting',
              icon: Image.asset(
                AssetsConstant.settingBottomImage,
                height: 20,
              )),
        ],
      ),
    );
  }
}

class ListMenu extends StatelessWidget {
  const ListMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceBetween,
      runAlignment: WrapAlignment.start,
      runSpacing: 20,
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 15,
      children: List.generate(
        listMenu.length,
        (index) => Container(
          // alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                listMenu[index].image,
                height: 50,
              ),
              Text(
                listMenu[index].title,
                textAlign: TextAlign.center,
                maxLines: 2,
                style: const TextStyle(fontSize: 12, color: ColorApp.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurrentAndSavingAccount extends StatelessWidget {
  const CurrentAndSavingAccount(
      {super.key,
      required this.title,
      required this.cardImage,
      required this.numberCard});
  final String title;
  final String cardImage;
  final String numberCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorApp.white,
          boxShadow: [
            BoxShadow(
              color: ColorApp.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ]),
      height: 80,
      child: Row(
        children: [
          Image.asset(cardImage),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                numberCard,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class TimeDeposit extends StatelessWidget {
  const TimeDeposit(
      {super.key,
      required this.title,
      required this.cardImage,
      required this.numberCard});
  final String title;
  final String cardImage;
  final String numberCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: ColorApp.white,
          boxShadow: [
            BoxShadow(
              color: ColorApp.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 4), // changes position of shadow
            ),
          ]),
      height: 80,
      child: Row(
        children: [
          Image.asset(cardImage),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
              Text(
                numberCard,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
