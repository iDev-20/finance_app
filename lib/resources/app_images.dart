import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppImages {
  AppImages._();

  static AssetImage graphSmall =
      const AssetImage('assets/images/graph_small.png');

  static SvgPicture svgNotificationIcon =
      SvgPicture.asset('assets/svgs/notification_icon.svg');
  static SvgPicture svgGrouppedIcon =
      SvgPicture.asset('assets/svgs/groupped_icon.svg');
  static SvgPicture svgExpenseIcon =
      SvgPicture.asset('assets/svgs/expense_icon.svg');
  static SvgPicture svgIncomeIcon =
      SvgPicture.asset('assets/svgs/income_icon.svg');
  static SvgPicture svgArrow = SvgPicture.asset('assets/svgs/arrow.svg');
  static SvgPicture svgAddIconWithCircle = SvgPicture.asset('assets/svgs/add_icon_with_circle.svg');
  static SvgPicture svgMovieIcon = SvgPicture.asset('assets/svgs/movie_icon.svg');
  static SvgPicture svgMusicIcon = SvgPicture.asset('assets/svgs/music_icon.svg');
}
