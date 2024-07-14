import 'package:flutter/material.dart';
import 'package:untitled/constants/appColor.dart';
import 'package:untitled/data/model/itemsModel.dart';

class CustomItemShop extends StatelessWidget {
  final ItemsModel item;
  const CustomItemShop({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(

      width: width * 0.454,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.primarycolor,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                
                width: double.infinity,
                child: Image.network(
                  
                  height: height * 0.14,
                  alignment: Alignment.topCenter,
                  "${item.thumbnail}",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                right: 0,
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: AppColor.primarycolor,
                  ),
                ),
              )
            ],
          ),
          const Divider(),
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 7),
                child: Column(
                  children: [
                    Text(
                      "${item.title}",
                      style: const TextStyle(
                          fontSize: 11, fontWeight: FontWeight.bold),
                      maxLines: 2,
                      overflow: TextOverflow.clip,
                    ),
                    Text(
                      "${item.description}",
                      style: const TextStyle(fontSize: 10,),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: height * 0.008,
                    ),
                    SizedBox(
                      height: height * 0.03,
                      child: Row(
                        children: [
                          Text(
                            "${(item.price! - (item.price! * double.parse(item.discountPercentage!)/100)).round()}  EGP",
                            style: const TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.05,
                          ),
                          Text(
                            "${item.price}  EGP",
                            style: const TextStyle(
                              color: AppColor.primarycolor,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: height * 0.0028,
                    ),
                    SizedBox(
                      height: height * 0.0466,
                      child: Row(
                        children: [
                          const Text(
                            "Review",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Text(
                            "(4.6)",
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: width * 0.01,
                          ),
                          const Icon(
                            Icons.star,
                            color: Color.fromARGB(255, 245, 224, 33),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: -8,
                right: -5,
                child: IconButton(
                  onPressed: () {},
                  iconSize: 33,
                  icon: const Icon(
                    Icons.add_circle,
                    color: AppColor.primarycolor,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
