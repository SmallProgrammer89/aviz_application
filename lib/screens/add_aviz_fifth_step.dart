import 'package:aviz_application/screens/main_screen.dart';
import 'package:aviz_application/widgets/step_line_indicator.dart';
import 'package:aviz_application/widgets/switcher_card.dart';
import 'package:aviz_application/widgets/titlle_widget.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../constants/custom_color.dart';

class AddAvizFifthStep extends StatefulWidget {
  const AddAvizFifthStep({super.key});

  @override
  State<AddAvizFifthStep> createState() => _AddAvizFifthStepState();
}

class _AddAvizFifthStepState extends State<AddAvizFifthStep> {
  bool _isEnableCall = false;
  bool _isEnableChat = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/close_icon.png'),
        actions: [
          GestureDetector(
            child: Image.asset('images/arrow_right_icon.png'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: RichText(
          text: TextSpan(children: [
            WidgetSpan(
                child: Image.asset("images/logo_type.png"),
                alignment: PlaceholderAlignment.middle),
            TextSpan(
              text: "دسته بندی",
              style: TextStyle(
                fontFamily: "shabnam",
                color: CustomColor.customRed,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            )
          ]),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            StepLineIndicatior(stepCount: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Expanded(
                  child: Column(
                children: [
                  const SizedBox(height: 20),
                  TitleWidget(title: "تصویر آویز", icon: "camera"),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: DottedBorder(
                      color: CustomColor.textColor,
                      dashPattern: [6.1],
                      borderType: BorderType.RRect,
                      radius: Radius.circular(5),
                      padding: EdgeInsets.all(6),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        child: Container(
                          alignment: Alignment.center,
                          height: 160,
                          width: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "لطفا تصویر آویز خود را بارگزاری کنید",
                                style: TextStyle(
                                  color: Colors.grey.shade500,
                                  fontSize: 15,
                                ),
                              ),
                              const SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    color: CustomColor.customRed,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    textDirection: TextDirection.rtl,
                                    children: [
                                      Image.asset("images/upload_icon.png"),
                                      const SizedBox(width: 10),
                                      Text(
                                        'انتخاب تصویر',
                                        style: TextStyle(
                                            fontSize: 17, color: Colors.white),
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  TitleWidget(title: "عنوان آویز", icon: "title"),
                  TextField(
                    cursorColor: CustomColor.customRed,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                      filled: true,
                      fillColor: CustomColor.customGrey,
                      hintText: 'عنوان آویز را وارد کنید',
                      hintStyle: TextStyle(
                        color: Color(0xFFD0D5DD),
                        fontSize: 16,
                        fontFamily: 'shabnam',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TitleWidget(title: "توضیحات آویز", icon: "explain"),
                  TextField(
                    cursorColor: CustomColor.customRed,
                    textAlign: TextAlign.end,
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8)),
                      filled: true,
                      fillColor: CustomColor.customGrey,
                      hintText: '..توضیحات آویز را وارد کنید',
                      hintStyle: TextStyle(
                        color: Color(0xFFD0D5DD),
                        fontSize: 16,
                        fontFamily: 'shabnam',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SwitcherCard(
                    title: "فعال کردن گفتگو",
                    switcher: _isEnableChat,
                    isMarjin: false,
                  ),
                  const SizedBox(height: 15),
                  SwitcherCard(
                    title: "فعال کردن تماس",
                    switcher: _isEnableCall,
                    isMarjin: false,
                  ),
                  const SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColor.customRed,
                            minimumSize:
                                Size(MediaQuery.of(context).size.width, 50)),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MainScreen(),
                              ));
                        },
                        child: Text(
                          "ثبت آگهی",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  )
                ],
              )),
            ),
          ],
        ),
      )),
    );
  }
}
