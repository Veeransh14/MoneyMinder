// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class Chart extends StatefulWidget {
//   const Chart({Key? key}) : super(key: key);

//   @override
//   State<Chart> createState() => _ChartState();
// }

// class _ChartState extends State<Chart> {
//   List<SalesData> dataSource = [
//     SalesData(100, 'Mon'),
//     SalesData(20, 'Tue'),
//     SalesData(40, 'Wed'),
//     SalesData(15, 'Sat'),
//     SalesData(5, 'Sun'),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 300,
//       child: SfCartesianChart(
//         primaryXAxis: CategoryAxis(),
//         series: <SplineSeries<SalesData, String>>[
//           SplineSeries<SalesData, String>(
//             color: Color.fromARGB(255, 18, 88, 102),
//             width: 3,
//             dataSource: dataSource,
//             xValueMapper: (SalesData sales, _) => sales.year,
//             yValueMapper: (SalesData sales, _) => sales.sales,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SalesData {
//   SalesData(this.sales, this.year);
//   final String year;
//   final int sales;
// }
