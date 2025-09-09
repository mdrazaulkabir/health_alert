import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task_mannager/ui/health/section_header.dart';
import 'package:task_mannager/ui/health/service_item.dart';

import '../ulits/asset_path.dart';
import 'department_card.dart';
import 'hospital_card.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Top Service Menu
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const[
                    ServiceItem(icon: Icons.local_hospital, title: "Clinic Visit"),
                    ServiceItem(icon: Icons.home_filled, title: "Home Visit"),
                    ServiceItem(icon: Icons.video_call, title: "Video Consult"),
                    ServiceItem(icon: Icons.local_pharmacy, title: "Pharmacy"),
                    ServiceItem(icon: Icons.coronavirus, title: "Diseases"),
                    ServiceItem(icon: Icons.health_and_safety, title: "Covid-19"),
                  ],
                ),
              ),

              /// Departments Section
              SectionHeader(title: "Departments"),
              SizedBox(
                height: 130,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: const [
                    DepartmentCard(title: "General Care", subtitle: "647 Doctor", icon: Icons.person),
                    DepartmentCard(title: "Pediatrics", subtitle: "324 Doctor", icon: Icons.child_care),
                    DepartmentCard(title: "Cardiologic", subtitle: "647 Doctor", icon: Icons.favorite),
                  ],
                ),
              ),
              SectionHeader(title: "Doctor"),
              CarouselSlider(
                options: CarouselOptions(height: 140.0),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.amber
                          ),
                          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
              ),

              /// Top Hospital Section
              SectionHeader(title: "Top Hospital"),
              SizedBox(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  children: const [
                    HospitalCard(
                      // imageUrl: "https://via.placeholder.com/150",
                      imageAsset: assetPath.generalHospital,

                      title: "General Doctor",
                      subtitle: "647 Doctor",
                    ),
                    HospitalCard(
                      // imageUrl: "https://via.placeholder.com/150",
                      imageAsset: assetPath.pediatricHospital,
                      title: "Pediatrics",
                      subtitle: "647 Doctor",
                    ),
                    HospitalCard(
                      // imageUrl: "https://via.placeholder.com/150",
                      imageAsset: assetPath.pediatricHospital,
                      title: "Pediatrics",
                      subtitle: "647 Doctor",
                    ),
                    HospitalCard(
                      // imageUrl: "https://via.placeholder.com/150",
                      imageAsset: assetPath.generalHospital,

                      title: "General Doctor",
                      subtitle: "647 Doctor",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      /// Bottom NavBar (Optional)
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: Colors.blue,
      //   unselectedItemColor: Colors.grey,
      //   items: const [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.person), label: "Doctor"),
      //     BottomNavigationBarItem(icon: Icon(Icons.medical_services), label: "Medicine"),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: "More"),
      //   ],
      // ),
    );
  }
}