import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      decoration: BoxDecoration(color: profileInfoColor, borderRadius: BorderRadius.circular(20)),
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
            label: 'Find Your collection for\n2021',
            maxLine: 2,
          ),
        ],
      ),
    );
  }

  Widget _searchBox() {
    return Padding(
      padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 45),
      child: Row(
        children: [
          Image.asset(
            icSearch,
            height: 20,
          ),
          SizedBox(width: 15),
          HintText(
            label: 'What are you looking for?',
          ),
          Spacer(),
          Image.asset(
            icSetting,
            height: 18,
          )
        ],
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
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 280,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return _productItem();
        },
      ),
    );
  }

  Widget _newArrivalList() {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(vertical: 20),
      height: 130,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, i) {
          return _newArrivalItem();
        },
      ),
    );
  }

  Widget _productItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      padding: EdgeInsets.all(10.0),
      width: 250,
      child: Column(
        children: [
          _productImageWithLikeButton(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TitleText(label: 'High neck middle dress'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: CreamSmallText(label: 'VEROMODA'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: TitleText(
              label: '\$299.99',
              fontWeight: fontWeightExtraBold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _newArrivalItem() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      padding: EdgeInsets.all(10.0),
      width: 350,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          _productImage(),
          _newArrivalProductInfo(),
          Image.asset(
            icFab,
            width: 35,
          )
        ],
      ),
    );
  }

  Column _newArrivalProductInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: TitleText(label: 'High neck middle dress'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CreamSmallText(label: 'ZARA'),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: TitleText(
            label: '\$499',
            fontWeight: fontWeightExtraBold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: CreamSmallText(label: 'Save 10% on this order'),
        ),
      ],
    );
  }

  Widget _productImageWithLikeButton() {
    return Stack(
      children: [
        Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Image.asset(
              icProduct1,
              height: 190,
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Column(
              children: [
                Image.asset(
                  icLike,
                  width: 40,
                ),
                SizedBox(height: 10),
                Image.asset(
                  icLock,
                  width: 40,
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _productImage() {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Container(
          color: productImageBackColor,
          child: Image.asset(
            icProduct2,
            height: 190,
          ),
        ),
      ),
    );
  }
}
