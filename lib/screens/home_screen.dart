import 'package:flutter/material.dart';
import 'package:send_to_me/utils/app_utils.dart';
import 'package:send_to_me/widget/default_send_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  void initState(){
    Future.delayed(const Duration(milliseconds: 750),(){
      AppUtils().setMetaThemeColor(Colors.white);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
                child:  Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('aaaaa'),
                      GestureDetector(
                        onTap: (){},
                        behavior: HitTestBehavior.translucent,
                        child:Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10)),

                          child: Center(
                            child: Text('테스트',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'Noto Sans SC',
                                  color: Colors.white,
                                  fontSize: 20,)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 36),
                child:  const DefaultSendButton(
                  buttonText: '메세지 보내기',
                  isActive: false,
                  isDisable: false,
                  isLoading: false,
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
