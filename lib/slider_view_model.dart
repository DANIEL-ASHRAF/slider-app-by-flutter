import 'package:stacked/stacked.dart';

class SliderViewModel extends BaseViewModel{
int _red=0;
int _green=0;
int _blue=0;

int _slider1=0;
int _slider2=0;
int _slider3=0;

int get red=>_red;
int get green=>_green;
int get blue=>_blue;

int get slider1Value=>_slider1;
int get slider2Value=>_slider2;
int get slider3Value=>_slider3;

void changeSlider1(int value){
  _slider1=value;
  _red=value;
  notifyListeners();
}
void changeSlider2(int value){
  _slider2=value;
  _green=value;
  notifyListeners();
}
void changeSlider3(int value){
  _slider3=value;
  _blue=value;
  notifyListeners();
}


}