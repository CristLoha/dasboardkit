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
            mainAxisAlignment: MainAxisAlignment.start,
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  Container(
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type Article Title',
                        suffixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xff363740),
                    ),
                    label: Text(
                      '2022, September 03, September 04',
                      style: TextStyle(
                        color: Color(0xff363740),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      DropdownButton(
                          hint: Text('Filter by'),
                          items: [
                            DropdownMenuItem(
                              value: 'Date',
                              child: Text('Date'),
                            ),
                            DropdownMenuItem(
                              value: 'Comments',
                              child: Text('Comments'),
                            ),
                            DropdownMenuItem(
                              value: 'Views',
                              child: Text('Views'),
                            ),
                          ],
                          onChanged: (_) {}),
                      SizedBox(width: 20),
                      DropdownButton(
                          hint: Text('Order by'),
                          items: [
                            DropdownMenuItem(
                              value: 'Date',
                              child: Text('Date'),
                            ),
                            DropdownMenuItem(
                              value: 'Comments',
                              child: Text('Comments'),
                            ),
                            DropdownMenuItem(
                              value: 'Views',
                              child: Text('Views'),
                            ),
                          ],
                          onChanged: (_) {}),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  DataTable(
                    headingRowColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.grey.shade200,
                    ),
                    columns: [
                      DataColumn(
                        label: Text('ID'),
                      ),
                      DataColumn(
                        label: Text('Article Title'),
                      ),
                      DataColumn(
                        label: Text('Creation Date'),
                      ),
                      DataColumn(
                        label: Text('Views'),
                      ),
                      DataColumn(
                        label: Text('Comments'),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(
                            Text('0'),
                          ),
                          DataCell(
                            Text('How to build a Flutter Web App'),
                          ),
                          DataCell(
                            Text('${DateTime.now()}'),
                          ),
                          DataCell(
                            Text('2.3K Views'),
                          ),
                          DataCell(
                            Text('102 Comments'),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text('1'),
                          ),
                          DataCell(
                            Text('How to build a Flutter Mobile App'),
                          ),
                          DataCell(
                            Text('${DateTime.now()}'),
                          ),
                          DataCell(
                            Text('5.3K Views'),
                          ),
                          DataCell(
                            Text('250 Comments'),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text('2'),
                          ),
                          DataCell(
                            Text('How to build a Flutter Mobile App'),
                          ),
                          DataCell(
                            Text('${DateTime.now()}'),
                          ),
                          DataCell(
                            Text('5.3K Views'),
                          ),
                          DataCell(
                            Text('250 Comments'),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text('3'),
                          ),
                          DataCell(
                            Text('How to build a Flutter Mobile App'),
                          ),
                          DataCell(
                            Text('${DateTime.now()}'),
                          ),
                          DataCell(
                            Text('5.3K Views'),
                          ),
                          DataCell(
                            Text('250 Comments'),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text('4'),
                          ),
                          DataCell(
                            Text('How to build a Flutter Mobile App'),
                          ),
                          DataCell(
                            Text('${DateTime.now()}'),
                          ),
                          DataCell(
                            Text('5.3K Views'),
                          ),
                          DataCell(
                            Text('250 Comments'),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color(0xff363740),
      ),
    );
  }
}
