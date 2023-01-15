import 'package:crypto_dashboard/core/constants.dart';
import 'package:flutter/material.dart';

class BannerHeading extends StatelessWidget {
  const BannerHeading({Key? key}) : super(key: key);

  final String _title = 'Discover, buy and sell digital\nAssets in the world';
  final String _description =
      'All types of digital assets are available on our platform. You can buy, sell and trade them with ease';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding * 2),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 28.0,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 30.0),
          Text(
            _description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontWeight: FontWeight.w300,
                ),
          ),
          const SizedBox(height: 30.0),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: primaryColor,
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 1.5,
                vertical: defaultPadding,
              ),
            ),
            child: Text(
              'Find out more',
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ],
      ),
    );
  }
}
