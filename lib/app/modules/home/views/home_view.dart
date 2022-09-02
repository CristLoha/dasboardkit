import 'package:dasboardkit/app/modules/dasboard/controllers/dasboard_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final DasboardController pageDasb = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 60,
          right: 60,
          top: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => pageDasb.isExpanded.toggle(),
                    icon: Icon(Icons.menu),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1456327102063-fb5054efe647?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&fit=crop&h=200&w=200&s=f05c14dd4db49f08a789e6449604c490'),
                    radius: 26,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ///Articles
                  Flexible(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.article,
                                  size: 26,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Articles',
                                  style: TextStyle(fontSize: 26),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              '6 Articles',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  ///Articles
                  Flexible(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.comment,
                                  size: 26,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Comments',
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              '+32 Comments',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.red,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  ///Subscriber
                  Flexible(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.people,
                                  size: 26,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Subscriptions',
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.amber,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              '3.2M Subscribers',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.amber,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  ///Subscriber
                  Flexible(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(18),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.monetization_on_outlined,
                                  size: 26,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 15),
                                Text(
                                  'Subscriptions',
                                  style: TextStyle(
                                    fontSize: 26,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              '2.300 \$',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        '6 Articles',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'New Articles',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
