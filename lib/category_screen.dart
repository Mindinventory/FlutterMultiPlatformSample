import 'package:flutter/material.dart';
import 'package:flutter_multiplatform_sample/utils/dimens.dart';
import 'package:flutter_multiplatform_sample/utils/images.dart';
import 'package:flutter_multiplatform_sample/widget/cream_small_text.dart';
import 'package:flutter_multiplatform_sample/widget/cream_title_text.dart';
import 'package:flutter_multiplatform_sample/widget/title_text.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class CatModel {
  String image;
  String catName;
  String brandName;
  String price;

  CatModel({this.image, this.catName, this.brandName, this.price});
}

const List<StaggeredTile> _staggeredTiles = <StaggeredTile>[
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1.95),
  StaggeredTile.count(1, 1.8),
  StaggeredTile.count(1, 1.6),
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1.95),
  StaggeredTile.count(1, 1.8),
  StaggeredTile.count(1, 1.6),
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1.95),
  StaggeredTile.count(1, 1.8),
  StaggeredTile.count(1, 1.6),
  StaggeredTile.count(1, 1.5),
  StaggeredTile.count(1, 1.95),
  StaggeredTile.count(1, 1.8),
  StaggeredTile.count(1, 1.6),
];

class _CategoryScreenState extends State<CategoryScreen> {
  List<CatModel> modelList = [
    CatModel(image: icCatProduct3, brandName: 'Loose fit blazer', catName: 'ZARA', price: '\$899.99'),
    CatModel(image: icCatProduct4, brandName: 'Open blazer', catName: 'VERMODA', price: '\$599.99'),
    CatModel(image: icCatProduct5, brandName: 'Blue loose fit blazer', catName: 'AJIO', price: '\$299.99'),
    CatModel(image: icCatProduct6, brandName: 'Open pink blazer', catName: 'VERMODA', price: '\$399.99'),
    CatModel(image: icCatProduct3, brandName: 'Loose fit blazer', catName: 'ZARA', price: '\$899.99'),
    CatModel(image: icCatProduct4, brandName: 'Open blazer', catName: 'VERMODA', price: '\$599.99'),
    CatModel(image: icCatProduct5, brandName: 'Blue loose fit blazer', catName: 'AJIO', price: '\$299.99'),
    CatModel(image: icCatProduct6, brandName: 'Open pink blazer', catName: 'VERMODA', price: '\$399.99'),
    CatModel(image: icCatProduct3, brandName: 'Loose fit blazer', catName: 'ZARA', price: '\$899.99'),
    CatModel(image: icCatProduct4, brandName: 'Open blazer', catName: 'VERMODA', price: '\$599.99'),
    CatModel(image: icCatProduct5, brandName: 'Blue loose fit blazer', catName: 'AJIO', price: '\$299.99'),
    CatModel(image: icCatProduct6, brandName: 'Open pink blazer', catName: 'VERMODA', price: '\$399.99'),
    CatModel(image: icCatProduct3, brandName: 'Loose fit blazer', catName: 'ZARA', price: '\$899.99'),
    CatModel(image: icCatProduct4, brandName: 'Open blazer', catName: 'VERMODA', price: '\$599.99'),
    CatModel(image: icCatProduct5, brandName: 'Blue loose fit blazer', catName: 'AJIO', price: '\$299.99'),
    CatModel(image: icCatProduct6, brandName: 'Open pink blazer', catName: 'VERMODA', price: '\$399.99'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _appBar(),
            _categoryInfo(),
            _filteredCatItem(),
            _productList(),
          ],
        ),
      ),
    );
  }

  Widget _appBar() {
    return Row(
      children: [_backButton(), _trailingButtons()],
    );
  }

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        margin: EdgeInsets.only(left: 15.0, top: 15),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 2.0),
              child: Container(
                child: ClipOval(
                  child: Image.asset(
                    icBlackBackArrowRound,
                    fit: BoxFit.cover,
                    height: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
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

  Widget _categoryInfo() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CreamTitleText(
            label: 'Oversize \nand Loose fit blazer',
            maxLine: 2,
          ),
          TitleText(
            label: '449 results',
            fontWeight: fontWeightLight,
            fontSize: fontSmall,
          )
        ],
      ),
    );
  }

  Widget _filteredCatItem() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [_catFilteredItem(icCatProduct1, 'Oversize'), _catFilteredItem(icCatProduct2, 'Loos fit')],
      ),
    );
  }

  Widget _catFilteredItem(String icon, String description) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          child: CircleAvatar(
            child: Container(
              child: ClipOval(
                child: Image.asset(
                  icon,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
        TitleText(
          label: description,
        ),
        SizedBox(
          width: 50,
        )
      ],
    );
  }

  Widget _productList() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 15.0, right: 15.0, left: 15.0),
        child: StaggeredGridView.countBuilder(
          staggeredTileBuilder: (index) {
            return _staggeredTiles[index];
          },
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 12,
          itemCount: modelList.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          child: FractionallySizedBox(
                            heightFactor: 1,
                            child: Image.asset(
                              modelList[index].image,
                              fit: BoxFit.fill,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Positioned(top: 15, right: 15, child: Image.asset(icLike, height: 30))
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: Column(
                      children: [
                        TitleText(
                          label: modelList[index].catName,
                          fontWeight: fontWeightSemiBold,
                          fontSize: fontSmall,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: CreamSmallText(
                            label: modelList[index].brandName,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                          child: TitleText(
                            label: modelList[index].price,
                            fontSize: fontLarge,
                            fontWeight: fontWeightSemiBold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
