
// import 'package:auto_size_text/auto_size_text.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:radio_xochicalco_app/utils/my_colors.dart';
// import 'package:url_launcher/url_launcher.dart';

class ProgrammingWidget extends StatefulWidget {
  const ProgrammingWidget({super.key});

  @override
  State<ProgrammingWidget> createState() => _ProgrammingWidgetState();
  
}

class _ProgrammingWidgetState extends State<ProgrammingWidget> {

  // Future<void> launchURL(String url) async {
  //   if (!await launchUrl(Uri.parse(url))) {
  //     throw Exception('Could not launch $url');
  //   }
  // }

  final List<DaySchedule> _schedule = [
    DaySchedule('Lunes', '8:00 am - 6:00 pm', [
      HourDetail('8:00 am', 'Música con huella'),
      HourDetail('11:00 am', 'Entre eventos y conciertos'),
      HourDetail('12:00 pm', 'Radio Snak'),
      HourDetail('1:00 pm', 'La voz y la lectura del coyote'),
      HourDetail('2:00 pm', 'Conexión Mexicali'),
      HourDetail('3:00 pm', 'Derecho a la acción'),
      HourDetail('4:00 pm', 'Música con huella'),
      HourDetail('6:00 pm', 'Charlas en bata blanca'),
    ]),
    DaySchedule('Martes', '8:00 am - 6:00 pm', [
      HourDetail('8:00 am', 'Música con huella'),
      HourDetail('10:00 am', 'Intervención cultural'),
      HourDetail('11:00 am', 'Efecto naranja'),
      HourDetail('12:00 pm', 'La visión del coyote'),
      HourDetail('1:00 pm', 'Ingenio creativo'),
      HourDetail('2:00 pm', 'Música con huella'),      
      HourDetail('4:00 pm', 'Marketing now'),
      HourDetail('5:00 pm', 'Música con huella'),
    ]),
    DaySchedule('Miércoles', '8:00 am - 6:00 pm', [
      HourDetail('8:00 am', 'Comunicoyotes'),
      HourDetail('9:00 am', 'Música con huella'),
      HourDetail('11:00 am', 'Coyotes al aire'),
      HourDetail('12:00 pm', 'Ingenio creativo'),
      HourDetail('1:00 pm', 'De mente abierta'),
      HourDetail('2:00 pm', 'Digi X'),
      HourDetail('3:00 pm', 'Música con huella'),
      HourDetail('4:00 pm', 'De zaz'),
      HourDetail('5:00 pm', 'Decibel cultural'),
      HourDetail('6:00 pm', 'Jaque mate'),
    ]),
    DaySchedule('Jueves', '8:00 am - 6:00 pm', [
      HourDetail('8:00 am', 'Comunicoyotes'),
      HourDetail('9:00 am', 'Música con huella'),
      HourDetail('11:00 am', 'Coyotes al aire'),
      HourDetail('12:00 pm', 'Ingenio creativo'),
      HourDetail('1:00 pm', 'De mente abierta'),
      HourDetail('2:00 pm', 'Digi X'),
      HourDetail('3:00 pm', 'Música con huella'),
      HourDetail('4:00 pm', 'De zaz'),
      HourDetail('5:00 pm', 'Decibel cultural'),
      HourDetail('6:00 pm', 'Jaque mate'),
    ]),
    // Añadir más días y horarios aquí
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: _schedule.map((daySchedule) {
              return Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 3,
                        color: Color(0x411D2429),
                        offset: Offset(
                          0.0,
                          1,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ExpandablePanel(
                    header: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                      child: Text(daySchedule.day),
                    ),               
                      // ListTile(
                      //   title: Text(daySchedule.day),
                      //   subtitle: Text(daySchedule.time),
                      // ),
                    
                    collapsed: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        height: 40,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                          child: Text(daySchedule.time),
                        ),
                      ),
                    ),
                    //Container(),
                    expanded: Column(
                      children: daySchedule.hourDetails.map((hourDetail) {
                        return Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(5, 1, 5, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width,
                            height: 40,
                            decoration: BoxDecoration(
                              color: MyColors.secondaryBackground,
                            ),
                            child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Text(hourDetail.description),
                                    ),
                                    Text(hourDetail.time),
                                  ],
                                ),
                              ],
                            ),
                          ),
                            
                            // ListTile(
                            //   title: Text(hourDetail.time),
                            //   subtitle: Text(hourDetail.description),
                            // ),
                          ),
                        );
                      }).toList(),
                    ),
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToExpand: true,
                      tapBodyToCollapse: true,
                      hasIcon: true,
                    ),
                  ),
                ),
              );
            }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return ListView(
  //     padding: EdgeInsets.all(8),
  //     children: _schedule.map((daySchedule) {
  //       return Padding(
  //         padding: const EdgeInsets.symmetric(vertical: 4.0),
  //         child: ExpandablePanel(
  //           header: ListTile(
  //             title: Text(daySchedule.day),
  //             subtitle: Text(daySchedule.time),
  //           ),
  //           collapsed: Container(),
  //           expanded: Column(
  //             children: daySchedule.hourDetails.map((hourDetail) {
  //               return ListTile(
  //                 title: Text(hourDetail.time),
  //                 subtitle: Text(hourDetail.description),
  //               );
  //             }).toList(),
  //           ),
  //           theme: ExpandableThemeData(
  //             headerAlignment: ExpandablePanelHeaderAlignment.center,
  //             tapBodyToExpand: true,
  //             tapBodyToCollapse: true,
  //             hasIcon: true,
  //           ),
  //         ),
  //       );
  //     }).toList(),
  //   );
  // }
  
}

class DaySchedule {
  String day;
  String time;
  bool isExpanded;
  List<HourDetail> hourDetails;

  DaySchedule(this.day, this.time, this.hourDetails, {this.isExpanded = false});
}

class HourDetail {
  String time;
  String description;

  HourDetail(this.time, this.description);
}