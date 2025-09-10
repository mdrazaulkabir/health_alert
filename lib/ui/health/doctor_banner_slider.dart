import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class DoctorBannerSlider extends StatefulWidget {
  const DoctorBannerSlider({
    super.key,
  });

  @override
  State<DoctorBannerSlider> createState() => _DoctorBannerSliderState();
}

class _DoctorBannerSliderState extends State<DoctorBannerSlider> {
  final ValueNotifier<int> _currentIndex=ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CarouselSlider(
            options: CarouselOptions(
                height: 140.0,
                viewportFraction: 1,
                onPageChanged: (int index, CarouselPageChangedReason reason) {
                  _currentIndex.value=index;
                }),
            items: [1,2,3,4,5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      alignment: Alignment.center,
                      child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                  );
                },
              );
            }).toList(),
          ),
        ),
        ValueListenableBuilder(
          valueListenable: _currentIndex,
          builder: (context, value, child) {
            return Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 for(int i=0; i<5; i++)
                   Container(
                     height: 15,width: 15,margin: EdgeInsets.only(right: 5),
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(13),
                       color:value==i? Colors.greenAccent:null,
                       border: Border.all(color: Colors.grey)
                     ),
                   )
                ],);
          }
        )
      ],
    );
  }
}