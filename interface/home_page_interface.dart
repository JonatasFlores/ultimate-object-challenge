abstract class PageInterface {
  void init() {}
}

class Navigator {
  static void init(PageInterface page) {
    page.init();
  }
}
