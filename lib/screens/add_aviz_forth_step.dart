import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/add_aviz_fifth_step.dart';
import 'package:aviz_application/widgets/step_line_indicator.dart';
import 'package:aviz_application/widgets/switcher_card.dart';
import 'package:aviz_application/widgets/titlle_widget.dart';
import 'package:flutter/material.dart';

class AddAvizForthStep extends StatefulWidget {
  const AddAvizForthStep({super.key});

  @override
  State<AddAvizForthStep> createState() => _AddAvizForthStepState();
}

class _AddAvizForthStepState extends State<AddAvizForthStep> {
  bool _isExatlyLocation = false;
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              width: double.infinity,
            ),
            StepLineIndicatior(stepCount: 4),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    TitleWidget(title: "موقعیت مکانی", icon: "map"),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        ".بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما حفظ شود",
                        style: TextStyle(
                          color: Color(0xff98A2B3),
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(7.5),
                          child: Image.asset(
                            "images/map_image.png",
                            width: double.infinity,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.5),
                            color: Color.fromARGB(24, 230, 0, 35),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(10),
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                              color: CustomColor.customRed,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              textDirection: TextDirection.rtl,
                              children: [
                                Text(
                                  'گرگان،صیاد شیرازی',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Spacer(),
                                Image.asset("images/location_icon.png")
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SwitcherCard(
                      title: "موقعیت دقیق نقشه نمایش داده شود؟",
                      switcher: _isExatlyLocation,
                      isMarjin: false,
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColor.customRed,
                              minimumSize:
                                  Size(MediaQuery.of(context).size.width, 50)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddAvizFifthStep()));
                          },
                          child: Text(
                            "بعدی",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
