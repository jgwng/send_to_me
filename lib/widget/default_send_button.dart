import 'package:flutter/material.dart';
import 'package:send_to_me/config/theme_config.dart';

class DefaultSendButton extends StatelessWidget {
  const DefaultSendButton({Key? key,this.isDisable,this.buttonText,
  this.activeColor,this.isLoading,this.isActive
  }) : super(key: key);
  final bool? isDisable;
  final bool? isActive;
  final String? buttonText;
  final Color? activeColor;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 56,
        margin: const EdgeInsets.symmetric(horizontal: 24),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: buttonColor
        ),
        child: buttonChild(),
      ),
    );
  }

  Widget buttonChild(){
    if(isLoading ?? false){
      return  const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    }
    return Text(buttonText ?? '',
        textAlign: TextAlign.center,
        style: const TextStyle(
      fontSize: 20,
      color: Colors.white,
      fontFamily: 'Noto Sans SC'
    ));
  }

  Color get buttonColor{
    if(isDisable ?? false){
      return AppThemes.disableColor;
    }

    if(isActive ?? true){
      return AppThemes.mainColor;
    }

    return  AppThemes.mainColor.withOpacity(0.4);
  }



}
