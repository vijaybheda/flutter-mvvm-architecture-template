import 'package:flutter/material.dart';
import 'package:flutter_mvvm_architecture_template/core/constants/app_colors.dart';

class AppTheme {
  final bool isLight;

  AppTheme({this.isLight = true});

  static AppTheme get light => AppTheme(isLight: true);
  static AppTheme get dark => AppTheme(isLight: false);

  ThemeData get theme {
    final backgroundColor = isLight ? AppColors.background : AppColors.text;
    final foregroundColor = isLight ? AppColors.text : AppColors.background;

    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary,
        brightness: isLight ? Brightness.light : Brightness.dark,
        surface: backgroundColor,
        onSurface: foregroundColor,
        onPrimary: foregroundColor,
        onSecondary: foregroundColor,
        onTertiary: foregroundColor,
        error: AppColors.error,
      ),
      textTheme: _textTheme(isLight: isLight),
      scaffoldBackgroundColor: backgroundColor,
      appBarTheme: AppBarTheme(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        elevation: 0,
        iconTheme: IconThemeData(color: foregroundColor),
        titleTextStyle: TextStyle(
          color: foregroundColor,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: foregroundColor,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: foregroundColor),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.textSecondary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.textSecondary),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
        labelStyle: TextStyle(color: AppColors.textSecondary),
        hintStyle: TextStyle(color: AppColors.textTertiary),
      ),
      iconTheme: IconThemeData(color: foregroundColor),
      cardTheme: CardThemeData(
        color: backgroundColor,
        elevation: 2,
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      cardColor: backgroundColor,
      dialogTheme: DialogThemeData(
        backgroundColor: backgroundColor,
        titleTextStyle: TextStyle(
          color: foregroundColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        contentTextStyle: TextStyle(color: foregroundColor),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: backgroundColor,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textSecondary,
        selectedLabelStyle: TextStyle(color: AppColors.primary),
        unselectedLabelStyle: TextStyle(color: AppColors.textSecondary),
      ),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: backgroundColor),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: backgroundColor,
        contentTextStyle: TextStyle(color: foregroundColor),
        actionTextColor: AppColors.primary,
      ),
      tabBarTheme: TabBarThemeData(
        labelColor: foregroundColor,
        unselectedLabelColor: AppColors.textSecondary,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColors.primary, width: 2),
        ),
      ),
      tooltipTheme: TooltipThemeData(
        textStyle: TextStyle(color: foregroundColor),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        color: AppColors.primary,
        selectedColor: foregroundColor,
        fillColor: AppColors.primary.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      timePickerTheme: TimePickerThemeData(
        backgroundColor: backgroundColor,
        hourMinuteTextColor: foregroundColor,
        dayPeriodTextColor: foregroundColor,
        dialHandColor: AppColors.primary,
        dialBackgroundColor: backgroundColor,
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: isLight ? Brightness.light : Brightness.dark,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          side: BorderSide(color: AppColors.primary),
        ),
      ),
      colorSchemeSeed: AppColors.primary,
      splashColor: AppColors.primary.withValues(alpha: 0.1),
      highlightColor: AppColors.primary.withValues(alpha: 0.05),
      hoverColor: AppColors.primary.withValues(alpha: 0.08),
      focusColor: AppColors.primary.withValues(alpha: 0.12),
      disabledColor: AppColors.textSecondary,
      dividerColor: AppColors.textSecondary,
      canvasColor: backgroundColor,
      chipTheme: ChipThemeData(
        backgroundColor: backgroundColor,
        labelStyle: TextStyle(color: foregroundColor),
        selectedColor: AppColors.primary.withValues(alpha: 0.2),
        secondarySelectedColor: AppColors.primary.withValues(alpha: 0.3),
        disabledColor: AppColors.textTertiary,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.all(AppColors.primary),
        checkColor: WidgetStateProperty.all(backgroundColor),
      ),
      radioTheme: RadioThemeData(
        fillColor: WidgetStateProperty.all(AppColors.primary),
      ),
      switchTheme: SwitchThemeData(
        trackColor: WidgetStateProperty.all(AppColors.primary.withValues(alpha: 0.5)),
        thumbColor: WidgetStateProperty.all(AppColors.primary),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.primary,
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.primary,
        inactiveTrackColor: AppColors.textSecondary,
        thumbColor: AppColors.primary,
        overlayColor: AppColors.primary.withValues(alpha: 0.1),
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12),
        overlayShape: const RoundSliderOverlayShape(overlayRadius: 24),
      ),
      listTileTheme: ListTileThemeData(
        titleTextStyle: TextStyle(color: foregroundColor),
        iconColor: AppColors.primary,
      ),
      expansionTileTheme: ExpansionTileThemeData(
        iconColor: AppColors.primary,
        collapsedIconColor: AppColors.textSecondary,
        textColor: foregroundColor,
        collapsedTextColor: AppColors.textSecondary,
      ),
      dividerTheme: DividerThemeData(
        color: AppColors.textSecondary,
        thickness: 1,
        space: 1,
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: backgroundColor,
        textStyle: TextStyle(color: foregroundColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }

  TextTheme _textTheme({bool isLight = true}) {
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      labelLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      labelSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      headlineLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      headlineMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      headlineSmall: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: isLight ? AppColors.text : AppColors.background,
      ),
    );
  }
}
