import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_interview/Controller/viewHomeController.dart';
import 'package:task_interview/utils/AppColors.dart';
import 'package:task_interview/utils/AppImage.dart';
import 'package:task_interview/utils/responsive.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        leading: Container(
          height: 10,
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            Appimage.locationIcon,
            height: 10,
            width: 50,
            errorBuilder:
                (context, error, stackTrace) =>
                    const Icon(Icons.error, color: Colors.red),
          ),
        ),
        backgroundColor: AppColors.cardColor,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Hyderabad',
                  style: GoogleFonts.poppins(color: AppColors.whiteColor),
                ),
              ],
            ),
            SizedBox(height: Get.height / 18),
            Container(
              height: Get.height / 25,
              width: Get.width / 1,
              child: Obx(
                () => ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () => controller.updateCategory(index),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  controller.selectedCategoryIndex.value ==
                                          index
                                      ? AppColors
                                          .cardColor // Active color
                                      : const Color(
                                        0xFF8A4AF3,
                                      ), // Inactive color
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 8.0,
                              ),
                            ),
                            child: Text(
                              controller.categories[index],
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton.filled(
            onPressed: () {
              // Example: Add a new category dynamically
              controller.addCategory('New Category');
            },
            style: IconButton.styleFrom(
              backgroundColor: AppColors.iconColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            icon: const Icon(
              Icons.headset_mic_outlined,
              color: AppColors.whiteColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: Responsive.getResponsivePadding(context),
        child: Column(children: [SvgPicture.asset(Appimage.cardBackgroud)]),
      ),
    );
  }
}
