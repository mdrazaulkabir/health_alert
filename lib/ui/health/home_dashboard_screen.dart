import 'package:flutter/material.dart';
import 'package:task_mannager/ui/health/section_header.dart';
import 'package:task_mannager/ui/health/service_item.dart';

import '../ulits/asset_path.dart';
import 'department_card.dart';
import 'doctor_banner_slider.dart';
import 'hospital_card.dart';

class HomeDashboardScreen extends StatelessWidget {
  const HomeDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
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
              SectionHeader(title: "Departments",viewAll: (){}),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const DepartmentCard(title: "General Care",
                        subtitle: "647 Doctor",
                        icon: Icons.person);
                  },
                  // children: const [
                  //   DepartmentCard(title: "General Care", subtitle: "647 Doctor", icon: Icons.person),
                  //   DepartmentCard(title: "Pediatrics", subtitle: "324 Doctor", icon: Icons.child_care),
                  //   DepartmentCard(title: "Cardiologic", subtitle: "647 Doctor", icon: Icons.favorite),
                  // ],
                ),
              ),
              SectionHeader(title: "Doctor",viewAll: (){}),
              DoctorBannerSlider(),

              /// Top Hospital Section
              SectionHeader(title: "Top Hospital",viewAll: (){}),
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

    );
  }
}

