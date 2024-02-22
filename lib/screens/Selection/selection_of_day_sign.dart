import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:untitled1/Screens/ZodiacDetails/sign_details.dart';
import 'package:untitled1/Utils/constants.dart';

import '../../Utils/extensions.dart';

class SelectionPage extends StatefulWidget {
  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> with Responsive {
  late int currentDay;
  List<bool> selectedDayIndex = List.generate(31, (index) => false);

  @override
  void initState() {
    super.initState();
    currentDay = DateTime.now().day;
    selectedDayIndex[currentDay - 1] = true;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Select the day",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
            SliverToBoxAdapter(
              child: SizedBox(
                height: screenHeight / 14.45,
                child: ScrollablePositionedList.builder(
                    initialAlignment: 0.5,
                    initialScrollIndex: currentDay,
                    scrollDirection: Axis.horizontal,
                    itemCount: 31,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(6),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedDayIndex.fillRange(0, 31, false);
                              selectedDayIndex[index] = true;
                              currentDay = index+1;
                            });
                          },
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: selectedDayIndex[index]
                                ? Colors.white
                                : const Color.fromRGBO(73, 74, 78, 1),
                            child: Center(
                                child: Text((index + 1).toString(),
                                    style: TextStyle(
                                        color: selectedDayIndex[index]
                                            ? Colors.black
                                            : const Color.fromRGBO(
                                                113, 113, 117, 1),
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold))),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            const SliverToBoxAdapter(
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Select your sign",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) => Card(
                  clipBehavior: Clip.hardEdge,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SignDetails(index, currentDay)),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // Align content with spacing
                      children: [
                        Text(allSigns[index].name,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Text(allSigns[index].dateInterval,
                            style: const TextStyle(fontSize: 16)),
                        Expanded(
                            child: Image.asset(allSigns[index].assetPicture)),
                        // Photo at the bottom
                      ],
                    ),
                  ),
                ),
                childCount: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
