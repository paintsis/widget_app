import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'button_screen';
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonViews(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            context.pop();
          }),
    );
  }
}

class _ButtonViews extends StatelessWidget {
  const _ButtonViews();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SizedBox(
          child: Wrap(
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {}, child: const Text('Elevated Button')),
              const ElevatedButton(
                  onPressed: null, child: Text('Disabled Elevated Button')),
              ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.access_alarm_rounded),
                  label: const Text('Elevated Icon')),
              FilledButton(onPressed: () {}, child: const Text('Filled')),
              FilledButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.accessibility),
                  label: const Text('Filled icon')),
              OutlinedButton(onPressed: () {}, child: const Text('Outline')),
              OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.terminal),
                  label: const Text('Outline Icon')),
              TextButton(onPressed: () {}, child: const Text('text')),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.account_box_outlined),
                  label: const Text('Text Icon')),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.app_registration_rounded)),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.app_registration_rounded),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(colors.primary)),
              ),
              const CustomBotton()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'hoa',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
