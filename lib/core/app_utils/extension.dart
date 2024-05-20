//photo 
import 'package:easy_localization/easy_localization.dart';

extension Photo on String {
  String png([String? path = "images"]) => 'assets/$path/$this.png';
  String svg([String path = "icons"]) => 'assets/$path/$this.svg';
  String jpg([String path = "images"]) => 'assets/$path/$this.jpg';
}
//time formTE
extension timeFormat on String{
  String get timeFormate1 {
    final time = DateFormat("yyyy-MM-dd HH:mm:ss.sss").parse(this);
    return DateFormat("yyyy-MM-dd HH:mm:ss", "en").format(time);
  }
}
//Date time
extension FormateDate on DateTime {
  String get formateDate {
    return "$year-$month-${day}T-${hour}_${minute}_$second";
  }
}

  