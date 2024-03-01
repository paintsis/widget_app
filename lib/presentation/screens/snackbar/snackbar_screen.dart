import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackScreen extends StatelessWidget {
  static const name = 'snack_screen';

  const SnackScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      duration: const Duration(seconds: 2),
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seugro'),
        content: const Text(
            'Dolore et occaecat ad sit officia nulla reprehenderit commodo est nostrud incididunt cillum voluptate. Nulla proident adipisicing tempor tempor ad ullamco nisi laborum fugiat amet reprehenderit. Nostrud tempor in velit elit fugiat nulla ex incididunt nostrud officia quis cupidatat id. Amet proident proident elit esse labore est consectetur et laboris in cupidatat reprehenderit.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    children: [
                      const Text(
                          'Tempor cupidatat nisi proident cillum officia sunt eu irure. Quis non incididunt nisi commodo tempor exercitation ipsum aute magna. Deserunt ad sit nulla laborum ad magna anim ex qui id consectetur sit occaecat ut.'),
                    ],
                  );
                },
                child: const Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: const Text('Mostrar dialogo')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackBar(context),
        label: const Text(
          'Mostrar Snackbar',
        ),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
