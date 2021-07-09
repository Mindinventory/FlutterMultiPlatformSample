import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_multiplatform_sample/models/product_model.dart';
import 'package:flutter_multiplatform_sample/product_screen.dart';
import 'package:flutter_multiplatform_sample/widget/frosted_like_button.dart';
import 'package:flutter_multiplatform_sample/widget/frosted_lock_button.dart';

import 'utils/color_utils.dart';
import 'utils/dimens.dart';
import 'utils/images.dart';
import 'widget/cream_small_text.dart';
import 'widget/cream_title_text.dart';
import 'widget/hint_text.dart';
import 'widget/subtitle_text.dart';
import 'widget/title_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ProductModel> popularProductList = [
    ProductModel(
        image: icProduct1,
        brandName: 'VERMODA',
        productName: 'High neck middle dress',
        price: '\$899.99'),
    ProductModel(
        image: icCatProduct1,
        brandName: 'ZARA',
        productName: 'Floral green dress',
        price: '\$599.99'),
    ProductModel(
        image: icProduct1,
        brandName: 'VERMODA',
        productName: 'High neck middle dress',
        price: '\$899.99'),
    ProductModel(
        image: icCatProduct1,
        brandName: 'ZARA',
        productName: 'Floral green dress',
        price: '\$599.99'),
    ProductModel(
        image: icProduct1,
        brandName: 'VERMODA',
        productName: 'High neck middle dress',
        price: '\$899.99'),
    ProductModel(
        image: icCatProduct1,
        brandName: 'ZARA',
        productName: 'Floral green dress',
        price: '\$599.99'),
    ProductModel(
        image: icProduct1,
        brandName: 'VERMODA',
        productName: 'High neck middle dress',
        price: '\$899.99'),
    ProductModel(
        image: icCatProduct1,
        brandName: 'ZARA',
        productName: 'Floral green dress',
        price: '\$599.99'),
    ProductModel(
        image: icProduct1,
        brandName: 'VERMODA',
        productName: 'High neck middle dress',
        price: '\$899.99'),
    ProductModel(
        image: icCatProduct1,
        brandName: 'ZARA',
        productName: 'Floral green dress',
        price: '\$599.99'),
  ];

  List<ProductModel> newArrivalList = [
    ProductModel(
        image: icProduct2,
        brandName: 'VERMODA',
        productName: 'Floral green dress',
        price: '\$899.99',
        discountString: 'Save 30% on this order'),
    ProductModel(
        image: icCatProduct2,
        brandName: 'ZARA',
        productName: 'Loose fit blazer',
        price: '\$599.99',
        discountString: 'Save 10% on this order'),
    ProductModel(
        image: icProduct2,
        brandName: 'VERMODA',
        productName: 'Floral green dress',
        price: '\$899.99',
        discountString: 'Save 30% on this order'),
    ProductModel(
        image: icCatProduct2,
        brandName: 'ZARA',
        productName: 'Loose fit blazer',
        price: '\$599.99',
        discountString: 'Save 10% on this order'),
    ProductModel(
        image: icProduct2,
        brandName: 'VERMODA',
        productName: 'Floral green dress',
        price: '\$899.99',
        discountString: 'Save 30% on this order'),
    ProductModel(
        image: icCatProduct2,
        brandName: 'ZARA',
        productName: 'Loose fit blazer',
        price: '\$599.99',
        discountString: 'Save 10% on this order'),
    ProductModel(
        image: icProduct2,
        brandName: 'VERMODA',
        productName: 'Floral green dress',
        price: '\$899.99',
        discountString: 'Save 30% on this order'),
    ProductModel(
        image: icCatProduct2,
        brandName: 'ZARA',
        productName: 'Loose fit blazer',
        price: '\$599.99',
        discountString: 'Save 10% on this order'),
    ProductModel(
        image: icProduct2,
        brandName: 'VERMODA',
        productName: 'Floral green dress',
        price: '\$899.99',
        discountString: 'Save 30% on this order'),
    ProductModel(
        image: icCatProduct2,
        brandName: 'ZARA',
        productName: 'Loose fit blazer',
        price: '\$599.99',
        discountString: 'Save 10% on this order'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeScreenBackground,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _appBar(),
              _collectionInfoText(),
              _searchBox(),
              _sectionUI('Popular products', 50.0),
              _productList(),
              _sectionUI('New Arrival', 15.0),
              _newArrivalList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _appBar() {
    return Row(
      children: [_useProfile(), _trailingButtons()],
    );
  }

  Widget _useProfile() {
    return Container(
      margin: EdgeInsets.only(left: 15.0, top: 15),
      width: 150.0,
      height: 40.0,
      decoration: BoxDecoration(
          color: profileInfoColor, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2.0),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CircleAvatar(
                child: Container(
                  child: ClipOval(
                    child: Image.asset(
                      icProfilePic,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: avatarBackgroundColor,
              boxShadow: [
                BoxShadow(
                  color: avatarShadowColor,
                  offset: Offset(0, 0),
                  blurRadius: 20,
                  spreadRadius: 0,
                ),
              ],
            ),
          ),
          SubTitleText(label: 'Alison Parker')
        ],
      ),
    );
  }

  Widget _trailingButtons() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            icBell,
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset(
              icBag,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _collectionInfoText() {
    return Container(
      margin: EdgeInsets.only(left: 15.0, top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CreamTitleText(
            label: 'Find Your collection for 2021',
            maxLine: 2,
          ),
        ],
      ),
    );
  }

  Widget _searchBox() {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 45),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: searchBarBackColor,
            borderRadius: BorderRadius.circular(30.0)),
        child: Row(
          children: [
            Image.asset(
              icSearch,
              height: 20,
            ),
            SizedBox(width: 14),
            HintText(
              label: 'What are you looking for?',
            ),
            Spacer(),
            Image.asset(
              icSetting,
              height: 20,
            )
          ],
        ),
      ),
    );
  }

  Widget _sectionUI(String message, double topPadding) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: topPadding),
      child: Row(
        children: [
          TitleText(
            label: message,
          ),
          Spacer(),
          Image.asset(
            icMenuDots,
            width: 20,
          )
        ],
      ),
    );
  }

  Widget _productList() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 300,
      child: ListView.builder(
        itemCount: popularProductList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return _productItem(popularProductList[i]);
        },
      ),
    );
  }

  Widget _newArrivalList() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 130,
      child: ListView.builder(
        itemCount: newArrivalList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return _newArrivalItem(newArrivalList[i]);
        },
      ),
    );
  }

  Widget _productItem(ProductModel productModel) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Container(
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: blurEffectShadowColor.withOpacity(0.5),
                blurRadius: 5.0,
                spreadRadius: 0.5,
              ),
            ],
          ),
          margin: EdgeInsets.only(left: 15),
          padding: EdgeInsets.all(10.0),
          width: 250,
          child: Column(
            children: [
              _productImageWithLikeButton(productModel.image),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TitleText(label: productModel.productName),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: CreamSmallText(label: productModel.brandName),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: TitleText(
                  label: productModel.price,
                  fontWeight: fontWeightExtraBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _newArrivalItem(ProductModel productModel) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: blurEffectShadowColor.withOpacity(0.5),
              blurRadius: 5.0,
              spreadRadius: 0.5,
            ),
          ],
        ),
        margin: EdgeInsets.only(left: 15),
        padding: EdgeInsets.all(10.0),
        width: 330,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            _productImage(productModel.image),
            SizedBox(width: 10),
            _newArrivalProductInfo(productModel),
            SizedBox(width: 20),
            Image.asset(
              icFab,
              width: 35,
            )
          ],
        ),
      ),
    );
  }

  Column _newArrivalProductInfo(ProductModel productModel) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: TitleText(label: productModel.productName),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CreamSmallText(label: productModel.brandName),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: TitleText(
            label: productModel.price,
            fontWeight: fontWeightExtraBold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CreamSmallText(label: productModel.discountString),
        ),
      ],
    );
  }

  Widget _productImageWithLikeButton(String image) {
    return Stack(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset(
              image,
              height: 190,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Column(
              children: [
                FrostedLikeButton(),
                SizedBox(height: 10),
                FrostedLockButton()
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _productImage(String image) {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          color: productImageBackColor,
          child: Image.asset(
            image,
            height: 190,
          ),
        ),
      ),
    );
  }
}
