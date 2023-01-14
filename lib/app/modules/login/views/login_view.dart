import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 50),
          Image.asset(
            'assets/vgsmall.png',
            color: Theme.of(context).colorScheme.inversePrimary,
            fit: BoxFit.cover,
            height: 80,
          ),
          const SizedBox(height: 16),
          Wrap(
            children: [
              const Text(
                "Write your beautiful",
                style: TextStyle(
                  fontSize: 16,
                  //color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
              Text(
                " tagline",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget buildPhone() {
    return Column(
      children: [
        const Text(
          "Login to continue",
          style: TextStyle(fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 25,
          ),
          child: TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Mobile Number",
              prefix: const Text("+91  "),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 0,
          ),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Get.theme.colorScheme.primary,
                foregroundColor: Get.theme.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Continue",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildOtp() {
    return Column(
      children: [
        const Text(
          "Login to continue",
          style: TextStyle(fontSize: 20),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 25,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              6,
              (index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: TextFormField(
                    style: TextStyle(
                      fontSize: 22,
                      color: Get.theme.colorScheme.onTertiaryContainer,
                    ),
                    showCursor: false,
                    readOnly: false,
                    enableInteractiveSelection: false,
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.top,
                    keyboardType: TextInputType.number,
                    focusNode: FocusNode(),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Get.theme.colorScheme.tertiaryContainer,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 0,
          ),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Get.theme.colorScheme.primary,
                foregroundColor: Get.theme.colorScheme.onPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Verify",
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
