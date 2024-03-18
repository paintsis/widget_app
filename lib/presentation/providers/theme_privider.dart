import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

final isDarkThemeProvider = StateProvider<bool>((ref) => false);

//listado de colores
final colorListProvider = Provider((ref) => colorList);

final selectedColorProvider = StateProvider<int>((ref) => 0);

//un objeto de tipo AppTheme - custom
final themeNotifierProvider =
    StateNotifierProvider<ThemeNofifier, AppTheme>((ref) => ThemeNofifier());

class ThemeNofifier extends StateNotifier<AppTheme> {
  ThemeNofifier() : super(AppTheme());
  void toggleDarkmode() {
    state.copyWith(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state.copyWith(selectedColor: colorIndex);
  }
}
