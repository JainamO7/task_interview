import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_interview/Controller/viewHomeController.dart';
import 'package:task_interview/utils/AppColors.dart';
import 'package:task_interview/utils/AppImage.dart';
import 'package:task_interview/view/finalPageVIew.dart';

class HomePageView extends StatelessWidget {
  HomePageView({super.key});
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: Get.height / 5,
        backgroundColor: AppColors.cardColor,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    Appimage.locationIcon,
                    height: 25,
                    width: 25,
                    errorBuilder:
                        (context, error, stackTrace) =>
                            const Icon(Icons.error, color: Colors.red),
                  ),
                ),
                Text(
                  'Hyderabad',
                  style: GoogleFonts.poppins(color: AppColors.whiteColor),
                ),

                Align(
                  alignment: Alignment.topRight,
                  child: IconButton.filled(
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
                ),
              ],
            ),
            SizedBox(height: Get.height / 18),
            SizedBox(
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
                                      ? AppColors.iconColor
                                      // Active color
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
                              style: GoogleFonts.poppins(fontSize: 12),
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
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: Get.height, // Ensure it takes at least the screen height
          ),
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Prevent Column from expanding infinitely
            children: [
              SvgPicture.asset(Appimage.cardBackgroud, fit: BoxFit.cover),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Delivery Box Card
                  _buildProductCard(
                    title: "Delivery Box",
                    subtitle: "10 - 150 guests",
                    imagePath: Appimage.product1,
                    height: Get.height / 3,
                    showExclusiveTag: false,
                  ),
                  // Meal Box and Catering Column
                  Column(
                    mainAxisSize:
                        MainAxisSize.min, // Prevent Column from expanding
                    children: [
                      _buildProductCard(
                        title: "Meal Box",
                        subtitle: "10 to 1500+ guests",
                        imagePath: Appimage.product2,
                        width: Get.width / 2,
                        height:
                            Get.height /
                            7, // Explicit height to bound constraints
                        imageAlignment: AlignmentDirectional.bottomEnd,
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        showExclusiveTag: false,
                      ),
                      _buildProductCard(
                        title: "Catering",
                        subtitle: "10 to 1500+ guests",
                        imagePath: Appimage.product3,
                        width: Get.width / 2,
                        height:
                            Get.height /
                            6, // Explicit height to bound constraints
                        imageAlignment: AlignmentDirectional.bottomEnd,
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        showExclusiveTag: true,
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  _buildOptionCard(
                    title: "Find My Platter",
                    icon: Icons.palette,
                  ),
                  _buildOptionCard(
                    title: "Create a Menu",
                    icon: Icons.cookie_outlined,
                  ),
                  _buildOptionCard(
                    title: "Discounted Platters",
                    icon: Icons.discount_outlined,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildBirthdayPlatterCard(
        imageUrl: Appimage.product4,
        name: 'Birthday platter',
        detils: '#102026 • 40 guests',
        minites: '20 mins',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        color: Colors.red, // Match app bar color for consistency
        child: SizedBox(
          width: double.maxFinite,
          child: InkWell(
            onTap: () {
              Get.to(() => Finalpageview());
            },
            child: Text(
              "Next",
              textAlign: TextAlign.center,
              style: GoogleFonts.lexend(
                color: AppColors.whiteColor,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOptionCard({required String title, required IconData icon}) {
    return Container(
      height: 100, // Fixed height to bound the layout
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.productColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Shrink-wrap content
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: Get.width / 4,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                title,
                style: GoogleFonts.lexend(),
                textAlign: TextAlign.start,
                overflow: TextOverflow.clip,
              ),
            ),
          ),
          Align(alignment: Alignment.bottomRight, child: Icon(icon)),
        ],
      ),
    );
  }

  Widget _buildBirthdayPlatterCard({
    required String imageUrl,
    required String name,
    required String detils,
    required String minites,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        margin: EdgeInsets.all(8),
        // Slightly taller to accommodate extra details
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.productColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(imageUrl),
            Column(
              mainAxisSize: MainAxisSize.min, // Shrink-wrap content
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: Get.width / 2,
                  child: Text(
                    name,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, // Highlight the title
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ),
                SizedBox(
                  width: Get.width / 2,
                  child: Text(
                    detils,
                    style: GoogleFonts.lexend(
                      fontSize: 12,
                      fontWeight: FontWeight.w200,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: AppColors.boxMinitColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  minites,
                  style: GoogleFonts.lexend(
                    color: AppColors.minitFontColor,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProductCard({
    required String title,
    required String subtitle,
    required String imagePath,
    double? height,
    double? width,
    AlignmentGeometry imageAlignment = AlignmentDirectional.bottomStart,
    EdgeInsets padding = const EdgeInsets.all(10),
    bool showExclusiveTag = false,
  }) {
    return Container(
      height: height,
      width: width,
      margin: const EdgeInsets.all(5),
      padding: padding,
      decoration: BoxDecoration(
        color: AppColors.productColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Shrink-wrap content
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: GoogleFonts.lexend(
              fontSize: title == "Delivery Box" ? 14 : 12,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            subtitle,
            textAlign: TextAlign.start,
            style: GoogleFonts.lexend(
              fontSize: 11,
              fontWeight: FontWeight.w300,
            ),
          ),
          if (showExclusiveTag) ...[
            const SizedBox(height: 5),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(5),
                  ),
                ),
                child: Text(
                  "Exclusive",
                  style: GoogleFonts.lexend(
                    color: AppColors.whiteColor,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
          const SizedBox(height: 10), // Replaced Spacer with fixed SizedBox
          Expanded(
            child: Align(
              alignment: imageAlignment,
              child: Image.asset(imagePath),
            ),
          ),
        ],
      ),
    );
  }
}
