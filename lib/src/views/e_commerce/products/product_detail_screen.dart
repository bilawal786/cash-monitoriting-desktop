import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/const.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int _counter = 1;
  bool isfav = false;

  final List<String> _imageList = [
    Images.tv3,
    Images.tv2,
    Images.tv1,
    Images.tv,
  ];
  String? imagePath;
  @override
  void initState() {
    imagePath = _imageList.first;
    super.initState();
  }

  final List<Map<String, dynamic>> _feedbackList = [
    {
      'title': 'Margo Mirz',
      'subTitle': 'This is Amazing Products',
      'rating': '4.5',
    },
    {
      'title': 'Nick G.',
      'subTitle': 'Good Products',
      'rating': '4.2',
    },
    {
      'title': 'Mick M.',
      'subTitle': 'good quality, beautifull Product',
      'rating': '4.3',
    },
    {
      'title': 'Marry k.',
      'subTitle': 'Wonderfull product',
      'rating': '4.3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
          decoration: BoxDecoration(
            color: ColorConst.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: ColorConst.primary.withOpacity(0.1),
                blurRadius: 5.0,
                offset: const Offset(0.0, 5.0),
              ),
            ],
          ),
          clipBehavior: Clip.hardEdge,
          child: isxl(context)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          imagePath!,
                          height: 300,
                          fit: BoxFit.contain,
                        ),
                        FxBox.h32,
                        _imageSlider(),
                      ],
                    ),
                    FxBox.w32,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const CustomText(
                                title: 'OnePlus Smart TV',
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                              const Spacer(),
                              _favouriteAndShare(),
                            ],
                          ),
                          FxBox.h12,
                          _reviewRow(),
                          FxBox.h24,
                          _price(),
                          _discount(),
                          _productDes(),
                          _available(),
                          _shipping(),
                          _quantity(),
                          FxBox.h24,
                          _buyAndCartButton(),
                          FxBox.h24,
                          const Divider(),
                          _sellerName(),
                          _category(),
                          _color(),
                        ],
                      ),
                    )
                  ],
                )
              : islg(context)
                  ? Column(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              imagePath!,
                              height: 300,
                              fit: BoxFit.contain,
                            ),
                            FxBox.h32,
                            _imageSlider(),
                          ],
                        ),
                        FxBox.h32,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CustomText(
                                  title: 'OnePlus Smart TV',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                                const Spacer(),
                                _favouriteAndShare(),
                              ],
                            ),
                            FxBox.h12,
                            _reviewRow(),
                            FxBox.h24,
                            _price(),
                            _discount(),
                            _productDes(),
                            _available(),
                            _shipping(),
                            _quantity(),
                            FxBox.h24,
                            _buyAndCartButton(),
                            FxBox.h24,
                            const Divider(),
                            _sellerName(),
                            _category(),
                            _color(),
                          ],
                        )
                      ],
                    )
                  : Column(
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              imagePath!,
                              height: 300,
                              fit: BoxFit.contain,
                            ),
                            FxBox.h32,
                            _imageSlider(),
                          ],
                        ),
                        FxBox.h32,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const CustomText(
                                  title: 'OnePlus Smart TV',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                                const Spacer(),
                                _favouriteAndShare(),
                              ],
                            ),
                            FxBox.h12,
                            _reviewRow(),
                            FxBox.h24,
                            _price(),
                            _discount(),
                            _productDes(),
                            _available(),
                            _shipping(),
                            _quantity(),
                            FxBox.h24,
                            _buyAndCartButton(),
                            FxBox.h24,
                            const Divider(),
                            _sellerName(),
                            _category(),
                            _color(),
                          ],
                        )
                      ],
                    ),
        ),
        FxBox.h20,
        isxl(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(flex: 3, child: _customerReview()),
                  FxBox.w16,
                  Expanded(child: _reviewBox()),
                ],
              )
            : islg(context)
                ? Column(
                    children: [
                      _customerReview(),
                      FxBox.w16,
                      _reviewBox(),
                    ],
                  )
                : Column(
                    children: [
                      _customerReview(),
                      FxBox.w16,
                      _reviewBox(),
                    ],
                  ),
      ],
    );
  }

  Widget _customerReview() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
      decoration: BoxDecoration(
        color: ColorConst.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: ColorConst.primary.withOpacity(0.1),
            blurRadius: 5.0,
            offset: const Offset(0.0, 5.0),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          const CustomText(
            title: 'Customer FeedBack',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          FxBox.h20,
          _customerFeedBack(),
        ],
      ),
    );
  }

  Widget _customerFeedBack() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: _feedbackList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: ColorConst.primary.withOpacity(0.3),
              child: CustomText(
                title:
                    _feedbackList[index]['title'].toString()[0].toUpperCase(),
                textColor: isDark ? ColorConst.white : ColorConst.black,
              ),
            ),
            title: Row(
              children: [
                CustomText(title: _feedbackList[index]['title']),
                const Spacer(),
                Row(
                  children: [
                    CustomText(
                      title: _feedbackList[index]['rating'],
                    ),
                    const Icon(
                      Icons.star,
                      size: 14,
                      color: Colors.amber,
                    ),
                  ],
                ),
              ],
            ),
            subtitle: CustomText(title: _feedbackList[index]['subTitle']),
            //trailing:
          );
        });
  }

  Widget _reviewBox() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
      decoration: BoxDecoration(
        color: ColorConst.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: ColorConst.primary.withOpacity(0.1),
            blurRadius: 5.0,
            offset: const Offset(0.0, 5.0),
          ),
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          const CustomText(
            title: 'Customer review',
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
          FxBox.h20,
          _startAndTotal(5, '50'),
          _startAndTotal(4, '45'),
          _startAndTotal(3, '52'),
          _startAndTotal(2, '12'),
          _startAndTotal(1, '5'),
        ],
      ),
    );
  }

  Widget _startAndTotal(double rating, String totalCustomer) {
    return Row(
      children: [
        FxRatingBar(
          rating: rating,
          borderColor: Colors.amber,
          color: Colors.amber,
          length: 5,
          defaultIcon: Icons.star_border,
          filledIcon: Icons.star,
          halfFilledIcon: Icons.star_half,
          onRated: (rating) {},
          enable: false,
        ),
        FxBox.w20,
        Expanded(
          child: CustomText(
            title: '$totalCustomer  Respnse',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        FxBox.w12,
      ],
    );
  }

  Widget _imageSlider() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(_imageList.length, (index) {
        return Row(
          children: [
            GestureDetector(
              onTap: () {
                imagePath = _imageList[index];
                setState(() {});
              },
              child: Container(
                width: 100,
                height: 100,
                padding:
                    const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
                decoration: BoxDecoration(
                  color: ColorConst.white,
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: [
                    BoxShadow(
                      color: ColorConst.primary.withOpacity(0.1),
                      blurRadius: 5.0,
                      offset: const Offset(0.0, 5.0),
                    ),
                  ],
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  _imageList[index],
                ),
              ),
            ),
            FxBox.w12,
          ],
        );
      }).toList()),
    );
  }

  Widget _favouriteAndShare() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          Container(
            height: 44,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade100,
            ),
            child: IconButton(
              onPressed: () {
                isfav = !isfav;
                setState(() {});
              },
              icon: Icon(
                isfav
                    ? Icons.favorite_outlined
                    : Icons.favorite_border_outlined,
                color: ColorConst.error,
              ),
            ),
          ),
          FxBox.w16,
          Container(
            height: 44,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.shade100,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buyAndCartButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          FxButton(
            text: 'BUY',
            height: 50,
            minWidth: 150,
            borderRadius: 4,
            color: ColorConst.primary,
            onPressed: () {},
          ),
          FxBox.w16,
          FxButton(
            text: 'ADD TO CART',
            icon: const Icon(Icons.shopping_bag_rounded),
            height: 50,
            minWidth: 150,
            borderRadius: 4,
            color: ColorConst.calSuccess,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _quantity() {
    return Padding(
      padding: const EdgeInsets.only(top: 14.0),
      child: Row(
        children: [
          const CustomText(
            title: 'Quantity:',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          FxBox.w24,
          _counterBox(
            onTap: () {
              if (_counter != 0) {
                _counter--;
              }

              setState(() {});
            },
            icon: Icons.remove,
          ),
          FxBox.w16,
          CustomText(title: _counter.toString()),
          FxBox.w16,
          _counterBox(
            onTap: () {
              _counter++;
              setState(() {});
            },
            icon: Icons.add,
          ),
        ],
      ),
    );
  }

  Widget _counterBox({
    void Function()? onTap,
    IconData? icon,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 6),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Icon(
          icon,
          size: 16,
        ),
      ),
    );
  }

  Widget _available() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          const CustomText(
            title: 'Available:',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          FxBox.w24,
          CustomText(
            title: 'In Stock',
            fontSize: 14,
            textColor: ColorConst.success,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _category() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          const CustomText(
            title: 'Category:',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          FxBox.w24,
          const CustomText(
            title: 'Electronics',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _color() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          const CustomText(
            title: 'Color:',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          FxBox.w24,
          const CustomText(
            title: 'Black, Sliver',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _sellerName() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          const CustomText(
            title: 'Seller Name',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          FxBox.w24,
          const CustomText(
            title: 'Sarvadhi ',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _shipping() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          const CustomText(
            title: 'Shipping:',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          FxBox.w24,
          const CustomText(
            title: 'Free',
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _productDes() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: CustomText(
        title:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
        fontSize: 14,
        maxLine: 3,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _discount() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: [
          CustomText(
            title: '\$ 420',
            textColor: ColorConst.greyChartColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
            textDecoration: TextDecoration.lineThrough,
          ),
          FxBox.w16,
          const CustomText(
            title: '30% off',
            textColor: ColorConst.primary,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }

  Widget _price() {
    return const Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: CustomText(
        title: '\$ 400',
        textColor: ColorConst.primary,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _reviewRow() {
    return Row(
      children: [
        _startRow(5),
        FxBox.w10,
        const CustomText(
          title: '5',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        FxBox.w12,
        const CustomText(
          title: '900 Review',
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ],
    );
  }

  Widget _startRow(int startLength) {
    return Row(
        children: List.generate(startLength, (index) {
      return const Icon(
        Icons.star_outlined,
        color: Colors.amber,
        size: 16,
      );
    }).toList());
  }
}
