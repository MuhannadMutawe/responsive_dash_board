import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensessItemHeader extends StatelessWidget {
  const AllExpensessItemHeader({
    super.key,
    required this.iconImage,
    this.isSelected = false,
  });

  final String iconImage;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                // width: 60,
                // height: 60,
                // padding: EdgeInsets.all(14),
                decoration: ShapeDecoration(
                  color: isSelected
                      // ignore: deprecated_member_use
                      ? Colors.white.withOpacity(0.10000000149011612)
                      : Color(0xFFFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    iconImage,
                    colorFilter: isSelected
                        ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                        : null,
                  ),
                ),
              ),
            ),
          ),
        ),
        Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new,
            color: isSelected ? Colors.white : Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
