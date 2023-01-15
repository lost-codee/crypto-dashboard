import 'package:crypto_dashboard/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class NightModeSwitch extends StatefulWidget {
  final bool value;
  final Function(bool) onChanged;

  const NightModeSwitch({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  _NightModeSwitchState createState() => _NightModeSwitchState();
}

class _NightModeSwitchState extends State<NightModeSwitch> {
  late bool _value;

  @override
  void initState() {
    _value = widget.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
        widget.onChanged(_value);
      },
      child: Container(
        width: 100,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: secondaryColor,
        ),
        child: Row(
          children: <Widget>[
            SwitchIcon(value: _value, icon: FeatherIcons.moon),
            SwitchIcon(value: !_value, icon: FeatherIcons.sun),
          ],
        ),
      ),
    );
  }
}

class SwitchIcon extends StatelessWidget {
  const SwitchIcon({
    Key? key,
    required bool value,
    required IconData icon,
  })  : _value = value,
        _icon = icon,
        super(key: key);

  final bool _value;
  final IconData _icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: _value ? Colors.grey[300] : secondaryColor,
        ),
        child: Icon(
          _icon,
          color: _value ? Colors.purple : Colors.grey[300],
          size: 18,
        ),
      ),
    );
  }
}
