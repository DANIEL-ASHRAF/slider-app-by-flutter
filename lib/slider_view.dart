import 'package:flutter/material.dart';
import 'package:slider_app/slider_view_model.dart';
import 'package:stacked/stacked.dart';

class SliderView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SliderViewModel>.reactive(
        builder: (context,model,_) {
          int r=model.red;
          int g=model.green;
          int b=model.blue;
          return Scaffold(
            backgroundColor: Color.fromARGB(255,r,g,b),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("RGB:($r,$g,$b)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                SizedBox(height: 10),
                Slider(
                  value: model.slider1Value.toDouble(),
                  min: 0,
                  max: 255,
                  inactiveColor: Colors.grey,
                  onChanged: (value) {
                    model.changeSlider1(value.toInt());
                  },
                ),
                Slider(
                  value: model.slider2Value.toDouble(),
                  min: 0,
                  max: 255,
                  inactiveColor: Colors.grey,
                  onChanged: (value) {
                    model.changeSlider2(value.toInt());
                  },
                ),
                Slider(
                  value: model.slider3Value.toDouble(),
                  min: 0,
                  max: 255,
                  inactiveColor: Colors.grey,
                  onChanged: (value) {
                    model.changeSlider3(value.toInt());
                  },
                ),
                SizedBox(height: 10),
              ],
            ),
          );
        },
        viewModelBuilder: ()=>SliderViewModel());
  }
}
