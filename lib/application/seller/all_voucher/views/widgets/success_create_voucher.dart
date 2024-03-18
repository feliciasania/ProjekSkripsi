import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projek_skripsi/core/const/app_themes.dart';

class SuccessCreateVoucher extends StatelessWidget {
  const SuccessCreateVoucher({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.blue,
      body: SafeArea(
        child: Container(
          width: Get.size.width,
          height: Get.size.height,
          margin: EdgeInsets.all(AppThemes().veryExtraSpacing),
          padding: EdgeInsets.all(AppThemes().extraSpacing),
          decoration: BoxDecoration(
            color: AppThemes.white,
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SuccessVoucherHeader(),
              SizedBox(height: AppThemes().veryExtraSpacing),
              const SuccessVoucherBody(),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: AppThemes().extraSpacing),
                child: Separator(),
              ),
              Expanded(child: const SuccessVoucherFooter()),
            ],
          ),
        ),
      ),
    );
  }
}

class SuccessVoucherHeader extends StatelessWidget {
  const SuccessVoucherHeader({Key? key}) : super(key: key);

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
        Text('Voucher Created Successful!',
            style: AppThemes().text3Bold(color: AppThemes.blue)),
        SizedBox(height: AppThemes().extraSpacing),
        Text('your voucher has created successfully and have been '
            'added to your store with:',
            style: AppThemes().text4(color: AppThemes.blue),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class SuccessVoucherBody extends StatelessWidget {
  const SuccessVoucherBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DetailList(title: 'Voucher Name', subtitle: 'Cashback 30% | Buy 2 Cupcake'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Quantity', subtitle: '5'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Expired Date', subtitle: '03 Maret 2024'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Price', subtitle: '420 Coins'),
        SizedBox(height: AppThemes().extraSpacing),
        DetailList(title: 'Description',
        subtitle: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, "
            "sed do eiusmod tempor incididunt ut labore et dolore..."),
      ],
    );
  }
}

class SuccessVoucherFooter extends StatelessWidget {
  const SuccessVoucherFooter({Key? key}) : super(key: key);

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
                'Check Store',
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
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

