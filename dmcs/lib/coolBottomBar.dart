import 'package:flutter/material.dart';
typedef void ItemClicked(int index);

class CoolBottomBar extends StatelessWidget {
  final List<CoolBarItem> items;

  final int selectedIndex;
  final ItemClicked itemClicked;
  final Duration duration;
  final double elevation;

  const CoolBottomBar({
    Key key,
    @required this.items,
    @required this.selectedIndex,
    @required this.itemClicked,
    this.duration = const Duration(milliseconds: 400),
    this.elevation = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      //elevation: elevation,
      child: Container(
        //width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 32, vertical: 14),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(items.length, (index) {
            return _CoolBarItem(
              duration: duration,
              isVisible: selectedIndex == index,
              onPressed: () {
                itemClicked(index);
              },
              item: items[index],
            );
          }),
        ),
      ),
    );
  }
}

class CoolBarItem {
  final Widget icon;
  final String title;
  final Color activeColor;
  final Color backgroundColor;

  CoolBarItem(
      {@required this.icon,
      @required this.title,
      @required this.activeColor,
      @required this.backgroundColor});
}

class _CoolBarItem extends StatelessWidget {
  final VoidCallback onPressed;

  final CoolBarItem item;

  final Duration duration;

  const _CoolBarItem(
      {Key key,
      @required this.isVisible,
      @required this.onPressed,
      @required this.item,
      this.duration})
      : super(key: key);

  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 20,
      child: FlatButton(
        onPressed: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconTheme(
                  data: IconThemeData(
                      color: isVisible
                          ? item.activeColor
                          : Theme.of(context).iconTheme.color),
                  child: item.icon),
            ),
            AnimatedCrossFade(
              duration: duration,
              crossFadeState: isVisible
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: Text(
                item.title,
                style: TextStyle(color: item.activeColor),
              ),
              secondChild: Container(
                width: 0,
                height: 0,
              ),
            )
          ],
        ),
        shape: StadiumBorder(),
        color: isVisible ? item.backgroundColor : null,
      ),
    );
  }
}
