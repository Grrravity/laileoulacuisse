import 'dart:async';

class ThemeBloc {
  final _themeStreamController = StreamController<bool>();
  get changeTheTheme => _themeStreamController.sink.add;
  get darkThemeIsEnabled => _themeStreamController.stream;

  ThemeBloc();

  void dispose() {
    _themeStreamController.close();
  }
}