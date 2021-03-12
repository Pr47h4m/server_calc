import 'package:flutter/material.dart';
import '../widgets/roundedButton.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  void calculate() {}

  final TextEditingController _input = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Server Calculator"),
        actions: [
          buildPopupMenuButton(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Spacer(),
            TextField(
              controller: _input,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 32, horizontal: 8),
              ),
              textAlign: TextAlign.end,
              style: Theme.of(context).textTheme.headline3,
              readOnly: true,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  color: Theme.of(context).colorScheme.primary,
                  label: "AC",
                  labelColor: Theme.of(context).colorScheme.onPrimary,
                  elevation: 1,
                  onTap: () {
                    _input.clear();
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.primary,
                  label: "+/-",
                  labelColor: Theme.of(context).colorScheme.onPrimary,
                  elevation: 1,
                  onTap: () {},
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.primary,
                  label: "%",
                  labelColor: Theme.of(context).colorScheme.onPrimary,
                  elevation: 1,
                  onTap: () {},
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.secondary,
                  label: "<=",
                  labelColor: Theme.of(context).colorScheme.onSecondary,
                  elevation: 1,
                  onTap: () {
                    if (_input.text.isNotEmpty)
                      _input.text =
                          _input.text.substring(0, _input.text.length - 1);
                  },
                  size: 34,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "7",
                  elevation: 0,
                  onTap: () {
                    _input.text += '7';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "8",
                  elevation: 0,
                  onTap: () {
                    _input.text += '8';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "9",
                  elevation: 0,
                  onTap: () {
                    _input.text += '9';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.secondary,
                  label: "/",
                  labelColor: Theme.of(context).colorScheme.onSecondary,
                  elevation: 1,
                  onTap: () {
                    _input.text += '/';
                  },
                  size: 34,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "4",
                  elevation: 0,
                  onTap: () {
                    _input.text += '4';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "5",
                  elevation: 0,
                  onTap: () {
                    _input.text += '5';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "6",
                  elevation: 0,
                  onTap: () {
                    _input.text += '6';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.secondary,
                  label: "X",
                  labelColor: Theme.of(context).colorScheme.onSecondary,
                  elevation: 1,
                  onTap: () {
                    _input.text += '*';
                  },
                  size: 34,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "1",
                  elevation: 0,
                  onTap: () {
                    _input.text += '1';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "2",
                  elevation: 0,
                  onTap: () {
                    _input.text += '2';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "3",
                  elevation: 0,
                  onTap: () {
                    _input.text += '3';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.secondary,
                  label: "--",
                  labelColor: Theme.of(context).colorScheme.onSecondary,
                  elevation: 1,
                  onTap: () {
                    _input.text += '-';
                  },
                  size: 34,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: "0",
                  elevation: 0,
                  onTap: () {
                    _input.text += '0';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.surface,
                  label: ".",
                  elevation: 0,
                  onTap: () {
                    _input.text += '.';
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.secondary,
                  label: "=",
                  labelColor: Theme.of(context).colorScheme.onSecondary,
                  elevation: 0,
                  onTap: () {
                    calculate();
                  },
                  size: 34,
                ),
                RoundedButton(
                  color: Theme.of(context).colorScheme.secondary,
                  label: "+",
                  labelColor: Theme.of(context).colorScheme.onSecondary,
                  elevation: 1,
                  onTap: () {
                    _input.text += '+';
                  },
                  size: 34,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "With ❤️ by Pratham Jaiswal",
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  PopupMenuButton buildPopupMenuButton() {
    return PopupMenuButton(
      icon: Icon(Icons.filter_list_outlined),
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Container(
            width: 120,
            child: Row(
              children: [
                const Text("History"),
                const Spacer(),
                Icon(
                  Icons.history,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          child: Container(
            width: 120,
            child: Row(
              children: [
                const Text("Rate App"),
                const Spacer(),
                Icon(
                  Icons.favorite,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
              ],
            ),
          ),
        ),
        PopupMenuItem(
          child: Container(
            width: 120,
            child: Row(
              children: [
                const Text("Share App"),
                const Spacer(),
                Icon(
                  Icons.share,
                  color: Theme.of(context).textTheme.bodyText1.color,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
