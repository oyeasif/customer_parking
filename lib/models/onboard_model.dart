import 'package:customer_parking_app/res/my_imgs.dart';

class OnboardModel {
  String? image;
  String? title;
  String? description;

  OnboardModel({
    this.image, this.title, this.description
  });
}

List<OnboardModel> items = [
  OnboardModel(
    image: MyImgs.onboard1,
    title: 'Find Pariking'
  )
];