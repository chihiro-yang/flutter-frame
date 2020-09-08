/// @time 2020/8/28 5:39 PM
/// @author gyy
/// @describe: HomeModel

class HomeModel {
  final String icon;
  final String title;
  final String url;
  final String statusBarColor;
  final bool hideAppBar;

  HomeModel(
      {this.icon, this.title, this.url, this.statusBarColor, this.hideAppBar});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      icon: json['icon'],
      title: json['title'],
      url: json['url'],
      statusBarColor: json['statusBarColor'],
      hideAppBar: json['hideAppBar'],
    );
  }
}
