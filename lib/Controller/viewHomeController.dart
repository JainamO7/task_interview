import 'package:get/get.dart';

class HomeController extends GetxController {
  final RxInt selectedCategoryIndex = 0.obs;
  final RxList<String> categories = RxList<String>([
    'All',
    'Delivery Box',
    'Catering',
    'Meal Box',
  ]);

  void updateCategory(int index) {
    if (index >= 0 && index < categories.length) {
      selectedCategoryIndex.value = index;
    }
  }

  // Method to update categories dynamically (example)
  void addCategory(String newCategory) {
    categories.add(newCategory);
  }

  // Method to remove a category (example)
  void removeCategory(int index) {
    if (index >= 0 && index < categories.length) {
      categories.removeAt(index);
      if (selectedCategoryIndex.value >= categories.length) {
        selectedCategoryIndex.value = categories.length - 1;
      }
    }
  }
}