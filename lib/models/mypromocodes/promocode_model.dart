//Current Promocode
class CurrentModel {
  final String title;
  final String text1;
  final String text2;

  CurrentModel({
    required this.title,
    required this.text1,
    required this.text2,
  });
}

List<CurrentModel> favouritemodel = [
  CurrentModel(
      title: 'Mcdonalds', text1: '50% off', text2: 'Valid until June 30, 2021'),
  CurrentModel(
      title: 'Burger King',
      text1: '50% off',
      text2: 'Valid until June 30, 2021'),
  CurrentModel(
      title: 'Dominos Pizza',
      text1: '50% off',
      text2: 'Valid until June 30, 2021'),
  CurrentModel(
      title: 'Dominos Pizza',
      text1: '50% off',
      text2: 'Valid until June 30, 2021'),
];

//Used PromoCode
class UsedCouponModel {
  final String title;
  final String text1;
  final String text2;

  UsedCouponModel({
    required this.title,
    required this.text1,
    required this.text2,
  });
}

List<UsedCouponModel> usedCoupons = [
  UsedCouponModel(
      title: 'Mcdonalds',
      text1: '50% off',
      text2: 'Used coupon date: June 30, 2021'),
  UsedCouponModel(
      title: 'Burger King',
      text1: '50% off',
      text2: 'Used coupon date: June 30, 2021'),
  UsedCouponModel(
      title: 'Dominos Pizza',
      text1: '50% off',
      text2: 'Used coupon date: June 30, 2021'),
];
