// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:wide_technologies_indonesia/constant/assets/assets_constant.dart';

class ListMenu {
  String image;
  String title;
  ListMenu({
    required this.image,
    required this.title,
  });
  
}

List<ListMenu> listMenu=[
  ListMenu(image:AssetsConstant.transferImage , title: 'Transfer'),
  ListMenu(image:AssetsConstant.paymentImage , title: 'Payment'),
  ListMenu(image:AssetsConstant.purchaseImage , title: 'Purchase'),
  ListMenu(image:AssetsConstant.emoneyImage , title: 'E-Money'),
  ListMenu(image:AssetsConstant.cashLoanImage , title: 'Cash Loan'),
  ListMenu(image:AssetsConstant.autoInstallmentImage , title: 'Auto\nInstallment'),
  ListMenu(image:AssetsConstant.pendingTransactionImage , title: 'Pending\nTransaction'),
  ListMenu(image:AssetsConstant.cardLessImage , title: 'Cardless'),
  ListMenu(image:AssetsConstant.spendingsImage , title: 'Spendings'),
  ListMenu(image:AssetsConstant.moreImage , title: 'More'),
];
