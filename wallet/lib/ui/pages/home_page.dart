import 'package:flutter/material.dart';
import 'package:wallet/shared/theme.dart';
import 'package:wallet/ui/widgets/home_latest_transaction_item.dart';
import 'package:wallet/ui/widgets/home_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: whiteColor,
        shape: const CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        notchMargin: 6,
        elevation: 0,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: whiteColor,
          elevation: 0,
          selectedItemColor: blueColor,
          unselectedItemColor: blackColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: blueTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          unselectedLabelStyle: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: medium,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_overview.png',
                width: 20,
                color: blueColor,
              ),
              label: 'Overview',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_history.png',
                width: 20,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_statistic.png',
                width: 20,
              ),
              label: 'Staistic',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/ic_reward.png',
                width: 20,
              ),
              label: 'Reward',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: purpleColor,
        child: Image.asset(
          'assets/ic_plus_circle.png',
          width: 24,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          buildProfile(),
          buildWallletCard(),
          buildLevel(),
          buildServices(),
          buildLatestTransactions(),
        ],
      ),
    );
  }
}

Widget buildProfile() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Howdy',
              style: greyTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'shaynahan',
              style: blackTextStyle.copyWith(
                fontSize: 20,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(
                'assets/img_profile.png',
              ),
            ),
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: whiteColor,
              ),
              child: Center(
                child: Icon(
                  Icons.check_circle,
                  color: greenColor,
                  size: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildWallletCard() {
  return Container(
    width: double.infinity,
    height: 220,
    margin: const EdgeInsets.only(
      top: 30,
    ),
    padding: const EdgeInsets.all(30),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(28),
      image: const DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(
          'assets/img_bg_card.png',
        ),
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shayna Hanna',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        const SizedBox(
          height: 28,
        ),
        Text(
          '**** **** **** 1280',
          style: whiteTextStyle.copyWith(
            fontSize: 18,
            fontWeight: medium,
            letterSpacing: 6,
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        Text(
          'Balance',
          style: whiteTextStyle,
        ),
        Text(
          'Rp 12.500',
          style: whiteTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        )
      ],
    ),
  );
}

Widget buildLevel() {
  return Container(
    margin: const EdgeInsets.only(
      top: 20,
    ),
    padding: const EdgeInsets.all(22),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: whiteColor,
    ),
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'Level 1',
              style: blackTextStyle.copyWith(
                fontSize: 14,
                fontWeight: medium,
              ),
            ),
            const Spacer(),
            Text(
              '55%',
              style: greenTextStyle.copyWith(
                fontSize: 14,
                fontWeight: semiBold,
              ),
            ),
            Text(
              'of Rp 20.000',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(55),
          child: LinearProgressIndicator(
            value: 0.55,
            minHeight: 5,
            valueColor: AlwaysStoppedAnimation(
              greenColor,
            ),
            backgroundColor: lightBackgroundColor,
          ),
        ),
      ],
    ),
  );
}

Widget buildServices() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Do Something',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HomeServicesItem(
              iconUrl: "assets/ic_topup.png",
              title: "Top Up",
              onTap: () {},
            ),
            HomeServicesItem(
              iconUrl: "assets/ic_send.png",
              title: "Send",
              onTap: () {},
            ),
            HomeServicesItem(
              iconUrl: "assets/ic_withdraw.png",
              title: "Withdraw",
              onTap: () {},
            ),
            HomeServicesItem(
              iconUrl: "assets/ic_more.png",
              title: "More",
              onTap: () {},
            ),
          ],
        )
      ],
    ),
  );
}

Widget buildLatestTransactions() {
  return Container(
    margin: const EdgeInsets.only(
      top: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transactions',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(22),
          margin: const EdgeInsets.only(
            top: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: whiteColor,
          ),
          child: const Column(
            children: [
              HomeLatestTransactionItem(
                iconUrl: 'assets/ic_transaction_cat1.png',
                title: 'Top Up',
                time: 'Yesterday',
                value: '+ 450.000',
              ),
              HomeLatestTransactionItem(
                iconUrl: 'assets/ic_transaction_cat2.png',
                title: 'Cashback',
                time: 'Sep 11',
                value: '+ 22.000',
              ),
              HomeLatestTransactionItem(
                iconUrl: 'assets/ic_transaction_cat3.png',
                title: 'Withdraw',
                time: 'Sep 2',
                value: '- 5.000',
              ),
              HomeLatestTransactionItem(
                iconUrl: 'assets/ic_transaction_cat4.png',
                title: 'Transfer',
                time: 'Aug 27',
                value: '- 123.500',
              ),
              HomeLatestTransactionItem(
                iconUrl: 'assets/ic_transaction_cat5.png',
                title: 'Electric',
                time: 'Feb 18',
                value: '- 12.300.000',
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
