import 'package:flutter/material.dart';

import '../../constants/appColor.dart';

class CustomSearchAppBar extends StatelessWidget {
  void Function()? onpressedshoppingCar;
  Function() onWrite;
  CustomSearchAppBar(
      {super.key, required this.onpressedshoppingCar, required this.onWrite});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.09,
            width: MediaQuery.of(context).size.width*0.26,
            
            child: Image.asset(
              color: const Color.fromARGB(255, 1, 82, 126),
                  "assets/images/routegold.png",
                  alignment: Alignment.topLeft,
                  fit: BoxFit.cover,
                ),
          ),
      
        Row(
          children: [
            Expanded(
              child: TextField(
                onChanged: (val) {
                  onWrite;
                },
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                  ),
                  hintText: "what do you search for?",
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      width: 20,
                      color: AppColor.primarycolor,
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: onpressedshoppingCar,
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: AppColor.primarycolor,
              ),
            )
          ],
        ),
      ],
    );
  }
}
