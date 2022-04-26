import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klutter/business_logic/cubit/theme_cubit.dart';

class SelectThemeTile extends StatelessWidget {
  const SelectThemeTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        late Icon leadingIcon;
        if (state == ThemeState.light) {
          leadingIcon = Icon(Icons.light_mode);
        } else if (state == ThemeState.dark) {
          leadingIcon = Icon(Icons.dark_mode);
        } else {
          leadingIcon = Icon(Icons.brightness_auto);
        }

        return ListTile(
          leading: leadingIcon,
          title: Text("主题"),
          subtitle: DropdownButton(
            isExpanded: true,
            value: state,
            onChanged: (value) =>
                context.read<ThemeCubit>().setTheme(value as ThemeState),
            items: [
              DropdownMenuItem(
                child: Text("白日"),
                value: ThemeState.light,
              ),
              DropdownMenuItem(
                child: Text("黑夜"),
                value: ThemeState.dark,
              ),
              DropdownMenuItem(
                child: Text("跟随系统"),
                value: ThemeState.system,
              ),
            ],
          ),
          trailing: Icon(null),
        );
      },
    );
  }
}
