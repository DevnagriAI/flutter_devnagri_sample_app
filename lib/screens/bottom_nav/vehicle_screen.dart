import 'package:flutter/material.dart';

import '../../l10n/generated/l10n.dart';

class VehicleScreen extends StatefulWidget {
  const VehicleScreen({super.key});

  @override
  State<VehicleScreen> createState() => _VehicleScreenState();
}

class _VehicleScreenState extends State<VehicleScreen> {
   List<String> _vehicleNames = [];


  @override
  void didChangeDependencies() {
    _vehicleNames = [
      Dev.of(context).car,
      Dev.of(context).airplane,
      Dev.of(context).truck,
      Dev.of(context).bus,
      Dev.of(context).train,
      Dev.of(context).motorcycle,
      Dev.of(context).scooter,
      Dev.of(context).motorWithBoat,
      Dev.of(context).ship,
    ];

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(Dev.of(context).vehicle),
      ),
      body: GridView.count(
        crossAxisCount: 2, // Two items per row
        children: _vehicleNames
            .map((vehicleName) => _buildVehicleItem(vehicleName))
            .toList(),
      ),
    );
  }

  Widget _buildVehicleItem(String vehicleName) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Text(
            vehicleName,
            style: const TextStyle(fontSize: 22,fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
