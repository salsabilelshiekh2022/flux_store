import 'package:flutter/material.dart';
import 'package:flux_store_for_course/constants.dart';
import 'package:flux_store_for_course/models/review_model.dart';
import 'package:flux_store_for_course/utils/assets.dart';

import 'number_of_each_star_model.dart';

class Product {
  late String id;
  late String name;
  late String drscription;
  late String image;
  late double price;
  late int numOfStar;
  late List<String> sizes;
  late List<Color> colors;
  late double countOfStar;
  late List<Review>? reviews;
  late NumberOfEachStar? numOfEachStar;
  late String initialSize;
  late Color initialColor;
  bool isFavourite;

  Product({
    required this.id,
    required this.name,
    required this.drscription,
    required this.image,
    required this.price,
    required this.numOfStar,
    required this.sizes,
    required this.colors,
    required this.countOfStar,
    this.isFavourite = false,
    required this.initialColor,
    required this.initialSize,
    this.reviews,
    this.numOfEachStar,
  });
}

List<Product> dummyProducts = [
  Product(
    id: '1',
    name: 'Sportwear Set',
    drscription:
        'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product4,
    price: 80.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.9,
    isFavourite: true,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '2',
    name: 'Lihna Tunic White',
    drscription:
        'Lihna Tunic White is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product3,
    price: 53.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.7,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '3',
    name: 'Skirt Dress',
    drscription:
        'Skirt Dress is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product4,
    price: 63.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.8,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '4',
    name: 'Linen Dress',
    drscription:
        'Linen Dress is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.productAsset,
    price: 52.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.9,
    isFavourite: true,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '5',
    name: 'Filted Waist Dress',
    drscription:
        'Filted Waist Dress is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.productAsset,
    price: 82.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.5,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '6',
    name: 'Off Shoulder Dress',
    drscription:
        'Off Shoulder Dress is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.productAsset,
    price: 78.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.9,
    isFavourite: true,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
];

List<Product> dummySimilarProducts = [
  Product(
    id: '1',
    name: 'Sportwear Set',
    drscription:
        'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.productAsset,
    price: 80.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.9,
    isFavourite: true,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '2',
    name: 'Lihna Tunic White',
    drscription:
        'Lihna Tunic White is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product3,
    price: 53.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.7,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '3',
    name: 'Skirt Dress',
    drscription:
        'Skirt Dress is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product4,
    price: 63.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.8,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '4',
    name: 'Linen Dress',
    drscription:
        'Linen Dress is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.productAsset,
    price: 52.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.9,
    isFavourite: true,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '5',
    name: 'Filted Waist Dress',
    drscription:
        'Filted Waist Dress is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.productAsset,
    price: 82.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.5,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '6',
    name: 'Off Shoulder Dress',
    drscription:
        'Off Shoulder Dress is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.productAsset,
    price: 78.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.9,
    isFavourite: true,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
];

List<Product> dummyFeatureProduct = [
  Product(
    id: '1',
    name: 'Turtleneck Sweater ',
    drscription:
        'Lihna Tunic White is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product1,
    price: 39.99,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.7,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '2',
    name: 'Long Sleeve Dress',
    drscription:
        'Lihna Tunic White is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product33,
    price: 45.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.7,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '3',
    name: 'Sportwear Set',
    drscription:
        'Lihna Tunic White is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product7,
    price: 80.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.7,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '4',
    name: 'Turtleneck Sweater ',
    drscription:
        'Lihna Tunic White is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product1,
    price: 39.99,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.7,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '5',
    name: 'Long Sleeve Dress',
    drscription:
        'Lihna Tunic White is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product33,
    price: 45.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.7,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
  Product(
    id: '6',
    name: 'Sportwear Set',
    drscription:
        'Lihna Tunic White is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
    image: AppAssets.product7,
    price: 80.00,
    numOfStar: 5,
    sizes: ['S', 'M', 'L'],
    colors: [kColorItem1, kColorItem2, kColorItem3],
    countOfStar: 4.7,
    isFavourite: false,
    initialColor: kColorItem1,
    initialSize: 'M',
    reviews: [
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
        time: '5m ago',
        image: AppAssets.review1,
      ),
      Review(
        name: 'Jennifer Rose',
        numOfStar: 5,
        reviewContent:
            "I'm very happy with order, It was delivered on and good quality. Recommended!",
        time: '9m ago',
        image: AppAssets.review2,
      ),
    ],
    numOfEachStar: NumberOfEachStar(
        countOfFiveStar: 80,
        countOfFourStar: 12,
        countOfOneStar: 0,
        countOfThreeStar: 5,
        countOfTwoStar: 3),
  ),
];
