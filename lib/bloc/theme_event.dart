import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:nft_marketplace/theme/app_themes.dart';

@immutable
abstract class ThemeEvent extends Equatable {
  const ThemeEvent([List props = const <dynamic>[]]) : super();
}

class ThemeChanged extends ThemeEvent {
  final AppTheme theme;

  ThemeChanged({
    required this.theme,
  }) : super([theme]);

  @override
  List<Object?> get props => [theme];
}