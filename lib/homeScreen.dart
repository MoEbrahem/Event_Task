import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/constants/appColor.dart';
import 'package:untitled/data/model/itemsModel.dart';
import 'package:untitled/data/repos/cubit/items_cubit.dart';

import 'package:untitled/widgets/homeScreen/searchAppBar.dart';
import 'package:untitled/widgets/homeScreen/shopitems.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ItemsModel> items = [];

  @override
  void initState() {
    BlocProvider.of<ItemsCubit>(context).fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          padding: const EdgeInsets.only(left: 10,right: 10,bottom: 10),
          child: Column(
            children: [
              CustomSearchAppBar(
                onWrite: () {},
                onpressedshoppingCar: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<ItemsCubit, ItemsState>(builder: (context, state) {
                if (state is ItemsSuccessState) {
                  items = (state).item;

                  return Expanded(
                    child: GridView.builder(
                      itemCount: items.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 8,
                        childAspectRatio: 1.5 / 2.14,
                      ),
                      itemBuilder: (context, index) {
                        return CustomItemShop(
                          item: items[index],
                        );
                      },
                    ),
                  );
                } else {
                  return const Expanded(
                    child: Center(
                      child: CircularProgressIndicator(color: AppColor.primarycolor,),
                    ),
                  );
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
