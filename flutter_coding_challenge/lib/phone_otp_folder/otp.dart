import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import 'phone.dart';

class MyOtp extends StatefulWidget {
  const MyOtp({super.key});

  @override
  State<MyOtp> createState() => _MyOtpState();
}

class _MyOtpState extends State<MyOtp> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 50,
      height: 100,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
        color: Colors.black,
      ),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: const Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    var code = '';
    return Scaffold(
      backgroundColor: Colors.white,
      // extendBodyBehindAppBar: true,

      body: Container(
        margin: const EdgeInsets.only(left: 25, right: 25),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image.asset(
            //   'assets/img1.png',
            //   width: 150,
            //   height: 150,
            // ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              '2F|CAPITAL',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "OTP",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Insert the OTP sent to your number",
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "0912345678",
              style: TextStyle(
                fontSize: 22,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            Pinput(
              length: 6,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              // validator: (s) {
              //   return s == '2222' ? null : 'Pin is incorrect';
              // },
              // pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
              showCursor: true,
              // onCompleted: (pin) => print(pin),
              onChanged: (value) {
                code = value;
              },
            ),

            // Container(
            //   height: 55,
            //   decoration: BoxDecoration(
            //     border: Border.all(width: 1, color: Colors.grey),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: const Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SizedBox(
            //         width: 10,
            //       ),
            //       SizedBox(
            //         width: 40,
            //         child: TextField(
            //           keyboardType: TextInputType.number,
            //           decoration: InputDecoration(
            //             border: InputBorder.none,
            //           ),
            //         ),
            //       ),
            //       Text(
            //         "|",
            //         style: TextStyle(fontSize: 33, color: Colors.grey),
            //       ),
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Expanded(
            //           child: TextField(
            //         keyboardType: TextInputType.phone,
            //         decoration: InputDecoration(
            //           border: InputBorder.none,
            //           hintText: "Phone",
            //         ),
            //       ))
            //     ],
            //   ),
            // ),

            const SizedBox(
              height: 20,
            ),
            const Text(
              'Resend',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 1.0),
              child: SizedBox(
                // width: double.infinity,
                height: 70, width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () async {
                    try {
                      // Navigator.pushNamed(context, 'verify');
                      PhoneAuthCredential credential =
                          PhoneAuthProvider.credential(
                              verificationId: MyPhone.verify, smsCode: code);
                      await auth.signInWithCredential(credential);
                      // Navigator.pushNamedAndRemoveUntil(
                      //     context, 'home', (route) => false);
                      Navigator.pushNamed(context, '/home');
                    } catch (e) {
                      print('Wrong otp');
                    }
                  },
                  child: const Text(
                    "CONTINUE",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, 'phone', (route) => false);
              },
              child: const Text(
                'Edit phone number?',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
