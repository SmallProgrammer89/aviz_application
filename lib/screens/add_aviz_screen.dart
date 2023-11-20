import 'package:aviz_application/constants/custom_color.dart';
import 'package:aviz_application/screens/add_aviz_thirth_step.dart';
import 'package:aviz_application/widgets/container_button.dart';
import 'package:aviz_application/widgets/step_line_indicator.dart';
import 'package:flutter/material.dart';

class AddAvizScreen extends StatefulWidget {
  const AddAvizScreen({super.key});

  @override
  State<AddAvizScreen> createState() => _AddAvizScreenState();
}

class _AddAvizScreenState extends State<AddAvizScreen> {
  int _stepCount = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset('images/close_icon.png'),
        actions: [
          GestureDetector(
              onTap: () {
                if (_stepCount != 1) {
                  setState(() {
                    _stepCount = _stepCount - 1;
                  });
                }
              },
              child: Image.asset('images/arrow_right_icon.png'))
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
          StepLineIndicatior(stepCount: _stepCount),
          const SizedBox(
            height: 20,
          ),
          _stepCount == 1 ? _getFirstStep() : _getSecondStep()
        ],
      )),
    );
  }

  Widget _getFirstStep() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ContainerButton(
            title: "اجاره مسکونی",
            color: "red",
          ),
          ContainerButton(
            title: "فروش مسکونی",
            color: "red",
            onTap: () {
              setState(() {
                _stepCount = 2;
              });
            },
          ),
          ContainerButton(
            title: "فروش دفاتر اداری و تجاری",
            color: "red",
          ),
          ContainerButton(
            title: "اجاره دفاتی اداری و تجاری",
            color: "red",
          ),
          ContainerButton(
            title: "اجاره کوتاه مدت",
            color: "red",
          ),
          ContainerButton(
            title: "پروژه ساخت و ساز",
            color: "red",
          ),
        ],
      ),
    );
  }

  Widget _getSecondStep() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          ContainerButton(
            title: "فروش آپارتمان",
            color: "red",
            onTap: () => _navigateThirthStep("فروش آپارتمان"),
          ),
          ContainerButton(
            title: "فروش خانه و ویلا",
            color: "red",
            onTap: () => _navigateThirthStep("فروش خانه و  ویلا"),
          ),
          ContainerButton(
            title: "فروش زمین کلنگی",
            color: "red",
            onTap: () => _navigateThirthStep("فروش زمین کلنگی"),
          ),
        ],
      ),
    );
  }

  void _navigateThirthStep(String category) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => AddAvizStepthirth(
            category: category,
          ),
        ));
  }
}
