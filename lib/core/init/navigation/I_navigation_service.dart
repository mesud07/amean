abstract class INavigationService {
  Future<void> navigateToPage({String? path, List<Object?>? data});
  Future<void> navigateToPageClear({String? path, Object? data});
}
