import 'package:flutter/material.dart';

class UiControlsScreen extends StatefulWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  State<UiControlsScreen> createState() => _UiControlsScreenState();
}

class _UiControlsScreenState extends State<UiControlsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreackfast = false;
  bool wantsLunch = false;
  bool wantsDinner = false;

  //const _UiControlsView();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
            title: const Text('Developer Mode'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('by Car'),
                subtitle: const Text('viajar en auto'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: ((value) {
                  setState(() {
                    selectedTransportation = Transportation.car;
                  });
                })),
            RadioListTile(
                title: const Text('by Plane'),
                subtitle: const Text('viajar en Avion'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: ((value) {
                  setState(() {
                    selectedTransportation = Transportation.plane;
                  });
                })),
            RadioListTile(
                title: const Text('by Submarine'),
                subtitle: const Text('viajar en Submarino'),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: ((value) {
                  setState(() {
                    selectedTransportation = Transportation.submarine;
                  });
                })),
            RadioListTile(
                title: const Text('by Boat'),
                subtitle: const Text('viajar en Bote'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: ((value) {
                  setState(() {
                    selectedTransportation = Transportation.boat;
                  });
                }))
          ],
        ),
        CheckboxListTile(
            title: const Text('Incluir refa'),
            value: wantsBreackfast,
            onChanged: (value) {
              wantsBreackfast = !wantsBreackfast;
            }),
        CheckboxListTile(
            title: const Text('Incluir Almuerzo'),
            value: wantsLunch,
            onChanged: (value) {
              wantsLunch = !wantsLunch;
            }),
        CheckboxListTile(
            title: const Text('Incluir desayuno'),
            value: wantsDinner,
            onChanged: (value) {
              wantsDinner = !wantsDinner;
            })
      ],
    );
  }
}
