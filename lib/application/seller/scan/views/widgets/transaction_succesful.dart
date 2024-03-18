import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class TransactionSuccessful extends StatelessWidget {
  const TransactionSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.blue,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: Get.size.width,
            margin: EdgeInsets.all(AppThemes().veryExtraSpacing),
            padding: EdgeInsets.all(AppThemes().extraSpacing),
            decoration: BoxDecoration(
                color: AppThemes.white,
                borderRadius: BorderRadius.circular(8.0)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TransactionSuccessfulHeader(),
                SizedBox(height: AppThemes().veryExtraSpacing),
                const TransactionSuccessfulBody(),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: AppThemes().veryExtraSpacing),
                  child: const Separator(),
                ),
                const TransactionSuccessfulFooter(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransactionSuccessfulHeader extends StatelessWidget {
  const TransactionSuccessfulHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: AppThemes().extraSpacing),
        const CircleAvatar(
          backgroundColor: AppThemes.blue,
          radius: 65,
          child: Icon(Icons.done, size: 100, color: AppThemes.white,),
        ),
        SizedBox(height: AppThemes().veryExtraSpacing),
        Text('Transaction Successful!',
            style: AppThemes().text3Bold(color: AppThemes.blue)),
        SizedBox(height: AppThemes().extraSpacing),
        Text('your transaction has created successfully and have been '
            'added to your store history with:',
            style: AppThemes().text4(color: AppThemes.blue),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class TransactionSuccessfulBody extends StatelessWidget {
  const TransactionSuccessfulBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailList(title: 'Customer Name', subtitle: 'Albert Silva'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Total Purchase', subtitle: 'Rp 42000'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Date Time', subtitle: '03 Maret 2024 15:10:22'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Quantity', subtitle: '5'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Voucher Id', subtitle: '123123123'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Voucher Name', subtitle: 'Cashback 30% | Free 2 Cups'),
      ],
    );
  }
}

class TransactionSuccessfulFooter extends StatelessWidget {
  const TransactionSuccessfulFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: Get.size.width * .5,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 3,
                backgroundColor: AppThemes.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)
                ),
              ),
              child: Text(
                'Check History',
                style: AppThemes().text4Bold(color: AppThemes.white),
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Go to home',
                style: AppThemes().text4Bold(color: AppThemes.blue),
              ),
          )
        ],
      ),
    );
  }
}

class DetailList extends StatelessWidget {
  final String title;
  final String subtitle;
  const DetailList({Key? key,
    required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppThemes().text5Bold(color: AppThemes.black),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        SizedBox(height: AppThemes().minSpacing),
        Text(
          subtitle,
          style: AppThemes().text5(color: AppThemes.blue),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({Key? key, this.height = 1, this.color = Colors.black})
      : super(key: key);
  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        const dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
        );
      },
    );
  }
}

