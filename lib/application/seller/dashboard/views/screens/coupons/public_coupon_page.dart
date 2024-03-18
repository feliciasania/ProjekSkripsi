import 'package:flutter/material.dart';
import 'package:projek_skripsi/application/seller/dashboard/views/widgets/card_widget.dart';

class PublicCouponPage extends StatelessWidget {
  const PublicCouponPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CouponCard();
        });
  }
}
