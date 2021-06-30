import 'package:flutter/material.dart';
import 'package:flutter_multiplatform_sample/utils/dimens.dart';
import 'package:flutter_multiplatform_sample/utils/images.dart';
import 'package:flutter_multiplatform_sample/widget/cream_small_text.dart';
import 'package:flutter_multiplatform_sample/widget/cream_title_text.dart';
import 'package:flutter_multiplatform_sample/widget/hint_text.dart';
import 'package:flutter_multiplatform_sample/widget/title_text.dart';

import 'utils/color_utils.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            _productImage(),
            _appBar(),
            Align(
              alignment: Alignment.bottomCenter,
              child: FractionallySizedBox(
                heightFactor: 0.53,
                child: _productDetailCard(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              icBlackBackArrow,
              height: 20.0,
            ),
          ),
          Image.asset(
            icLike,
            height: 35.0,
          ),
        ],
      ),
    );
  }

  Widget _productImage() {
    return Container(
        width: double.infinity,
        child: Image.asset(
          icProductDetail,
          fit: BoxFit.fill,
        ));
  }

  Widget _productDetailCard() {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        initialChildSize: 1,
        builder: (context, scrollController) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 25),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: white,
            ),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: CreamSmallText(label: 'ZARA'),
                  ),
                  _productNameAndPrice(),
                  _rattingBar(),
                  _descriptionText(),
                  _colorSectionText(),
                  _addToCartButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _productNameAndPrice() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleText(
            label: 'Floral green middle dress',
            fontSize: fontLarger,
          ),
          CreamTitleText(
            label: '\$499',
            maxLine: 2,
          )
        ],
      ),
    );
  }

  Widget _rattingBar() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            icRatings,
            height: 15.0,
          ),
          SizedBox(width: 10),
          CreamSmallText(label: '4.5(216 Review)')
        ],
      ),
    );
  }

  Widget _descriptionText() {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: HintText(
        label: 'Zara floral green high neck middle dress is highly popular among peoples. provided best material 100% cotton and it suitable for both classic and casual style.',
        maxLine: 5,
        fontSize: fontSmall,
      ),
    );
  }

  Widget _colorSectionText() {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TitleText(
                label: 'Color',
                fontSize: fontLarger,
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    color: productDetailImageBackColor,
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      icProductDetailImage3,
                      height: 65,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    color: productDetailImageBackColor,
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      icProductDetailImage2,
                      height: 65,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    color: productDetailImageBackColor,
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.asset(
                      icProductDetailImage1,
                      height: 65,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _addToCartButton() {
    return Container(
      margin: EdgeInsets.only(top: 12),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: white,
            blurRadius: 45.0,
            spreadRadius: 25.0,
          ),
        ],
        color: white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: Container(
          width: double.infinity,
          height: 60,
          color: subtitleTextColor,
          padding: EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icAddToCart,
                height: 20,
              ),
              SizedBox(
                width: 10.0,
              ),
              TitleText(
                label: 'Add to cart',
                fontSize: fontLarger,
                fontColor: white,
                fontWeight: fontWeightRegular,
              )
            ],
          ),
        ),
      ),
    );
  }
}
