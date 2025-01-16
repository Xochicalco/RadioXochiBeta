import 'dart:async';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
// import 'package:audioplayers/audioplayers.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:radio_xochicalco_app/utils/my_colors.dart';
import 'package:radio_xochicalco_app/widgets/audio_player.dart';
// import 'package:radio_xochicalco_app/widgets/library.dart';
// import 'package:radio_xochicalco_app/widgets/programming.dart';
// import 'package:radio_xochicalco_app/widgets/player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:expandable/expandable.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // late AudioPlayer soundPlayer = AudioPlayer();
  late AudioPlayer audioPlayer; // = AudioPlayer();
  bool streaming = false;

  Future<void> launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  void initState() {
    super.initState();

    // Create the audio player.
    // soundPlayer = AudioPlayer();
    audioPlayer = AudioPlayer();

    // Set the release mode to keep the source after playback has completed.
    // soundPlayer.setReleaseMode(ReleaseMode.stop);

    // try {
    //   // Start the player as soon as the app is displayed.
    //   WidgetsBinding.instance.addPostFrameCallback((_) async {
    //     await soundPlayer
    //         .setSourceUrl('https://tv.radiohosting.online:9002/stream');
    //     // await soundPlayer.resume();
    //   });
    // } catch (e) {
    //   print('Error: $e');
    // }
  }

  @override
  void dispose() {
    // soundPlayer.dispose();
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color.fromARGB(255, 0, 32, 60),
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/LogoMini.png',
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                    child: Text(
                      'Radio Xochicalco',
                      style: TextStyle(
                        fontFamily: 'Readex Pro',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyColors.primaryText,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: AudioPlayerWidget(audioPlayer: audioPlayer),
                // child: DefaultTabController(
                //   length: 4,
                //   child: Column(
                //     children: [
                //       TabBar(
                //         labelColor: MyColors.primaryText,
                //         //unselectedLabelColor: Colors.grey,
                //         tabs: const [
                //           Tab(
                //             text: 'Reproductor',
                //           ),
                //           Tab(
                //             text: 'Programación',
                //           ),
                //           Tab(
                //             text: 'Test',
                //           ),
                //           Tab(
                //             text: 'Biblioteca',
                //           ),
                //         ],
                //       ),
                //       Expanded(
                //         child: TabBarView(
                //           children: [
                //             // Reproductor
                //             AudioPlayerWidget(audioPlayer: audioPlayer),
                //             // Column(
                //             //   mainAxisSize: MainAxisSize.max,
                //             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             //   children: [
                //             //     Row(
                //             //       mainAxisSize: MainAxisSize.max,
                //             //       mainAxisAlignment: MainAxisAlignment.center,
                //             //       children: [
                //             //         Expanded(
                //             //           child: Container(
                //             //             alignment: Alignment.center,
                //             //             width: 100,
                //             //             height: 30,
                //             //             decoration: const BoxDecoration(
                //             //               color:
                //             //                   Color.fromARGB(255, 236, 105, 74),
                //             //             ),
                //             //             child: Text(
                //             //               'Transmisión en vivo',
                //             //               style: TextStyle(
                //             //                 color: MyColors.primaryText,
                //             //                 fontWeight: FontWeight.bold,
                //             //               ),
                //             //             ),
                //             //           ),
                //             //         ),
                //             //       ],
                //             //     ),
                //             //     Expanded(
                //             //       child: Padding(
                //             //         padding:
                //             //             const EdgeInsetsDirectional.fromSTEB(
                //             //                 0, 50, 0, 30),
                //             //         child: Row(
                //             //           mainAxisSize: MainAxisSize.max,
                //             //           mainAxisAlignment:
                //             //               MainAxisAlignment.center,
                //             //           children: [
                //             //             ClipRRect(
                //             //               borderRadius:
                //             //                   BorderRadius.circular(8),
                //             //               child: Image.asset(
                //             //                 'assets/images/logo.png',
                //             //                 width: 150,
                //             //                 height: 150,
                //             //                 fit: BoxFit.contain,
                //             //               ),
                //             //             ),
                //             //           ],
                //             //         ),
                //             //       ),
                //             //     ),
                //             //     Expanded(
                //             //       child: Padding(
                //             //         padding:
                //             //             const EdgeInsetsDirectional.fromSTEB(
                //             //                 0, 20, 0, 30),
                //             //         child: Row(
                //             //           mainAxisSize: MainAxisSize.max,
                //             //           mainAxisAlignment:
                //             //               MainAxisAlignment.center,
                //             //           children: [
                //             //             // IconButton.filled(
                //             //             //   onPressed: null,
                //             //             //   icon: Icon(
                //             //             //     Icons.stop,
                //             //             //     color: Colors.white,
                //             //             //     fill: 0.5,
                //             //             //   ),
                //             //             //   iconSize: 70,
                //             //             //   style: IconButton.styleFrom(
                //             //             //     backgroundColor:
                //             //             //         const Color.fromARGB(
                //             //             //             255, 236, 105, 74),
                //             //             //   ),
                //             //             // ),

                //             //             // PlayerWidget(player: soundPlayer),
                //             //             //AudioPlayerWidget(),
                //             //           ],
                //             //         ),
                //             //       ),
                //             //     ),
                //             //     Expanded(
                //             //       child: Padding(
                //             //         padding:
                //             //             const EdgeInsetsDirectional.fromSTEB(
                //             //                 0, 50, 0, 30),
                //             //         child: Row(
                //             //           mainAxisSize: MainAxisSize.max,
                //             //           mainAxisAlignment:
                //             //               MainAxisAlignment.center,
                //             //           children: [
                //             //             IconButton(
                //             //               iconSize: 50,
                //             //               icon: Icon(
                //             //                 Icons.facebook,
                //             //                 color: MyColors.white,
                //             //               ),
                //             //               onPressed: () async {
                //             //                 await launchURL(
                //             //                     'https://www.facebook.com/RadioXochicalco');
                //             //               },
                //             //             ),
                //             //             IconButton(
                //             //               iconSize: 50,
                //             //               icon: FaIcon(
                //             //                 FontAwesomeIcons.youtube,
                //             //                 color: MyColors.white,
                //             //               ),
                //             //               onPressed: () async {
                //             //                 await launchURL(
                //             //                     'https://www.youtube.com/c/UniversidadXochicalco');
                //             //               },
                //             //             ),
                //             //             IconButton(
                //             //               iconSize: 50,
                //             //               icon: FaIcon(
                //             //                 FontAwesomeIcons.instagram,
                //             //                 color: MyColors.white,
                //             //               ),
                //             //               onPressed: () async {
                //             //                 await launchURL(
                //             //                     'https://www.instagram.com/radio_xochicalco/');
                //             //               },
                //             //             ),
                //             //           ],
                //             //         ),
                //             //       ),
                //             //     ),
                //             //   ],
                //             // ),
                //             // Programación
                //             //const Icon(Icons.directions_bike_sharp),
                //             //const ProgrammingWidget(),
                //             Column(
                //               mainAxisSize: MainAxisSize.max,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               children: [
                //                 Expanded(
                //                   child: Container(
                //                     decoration: BoxDecoration(
                //                       color: MyColors.primaryBackground,
                //                     ),
                //                     child: Padding(
                //                       padding: EdgeInsetsDirectional.fromSTEB(
                //                           20, 10, 20, 0),
                //                       child: ListView.separated(
                //                         padding:
                //                             EdgeInsets.fromLTRB(0, 10, 0, 10),
                //                         shrinkWrap: true,
                //                         scrollDirection: Axis.vertical,
                //                         itemBuilder:
                //                             (BuildContext context, int index) {
                //                           return buildProgramacion(index);
                //                         },
                //                         separatorBuilder: (context, index) {
                //                           return const SizedBox(
                //                             height: 10,
                //                           );
                //                         },
                //                         itemCount: 5,
                //                       ),
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //             // Test
                //             //const Icon(Icons.directions_bike_sharp),
                //             const ProgrammingWidget(),
                //             // Biblioteca
                //             //const Icon(Icons.directions_car_outlined),
                //             const LibraryWidget(),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  buildProgramacion(int i) {
    switch (i) {
      case 0: // Lunes
        return Container(
          width: double.infinity,
          color: MyColors.white,
          child: ExpandableNotifier(
            child: ExpandablePanel(
              header: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text('Lunes'),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.secondaryBackground,
                  ),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    child: Text('8:00 am - 6:00 pm'),
                  ),
                ),
              ),
              expanded: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: const EdgeInsets.all(5.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('8:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('9:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('10:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Entre eventos y conciertos',
                                    ),
                                  ),
                                  Text('11:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Radio Snak',
                                    ),
                                  ),
                                  Text('12:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'La voz y la lectura del coyote',
                                    ),
                                  ),
                                  Text('1:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Conexión Mexicali',
                                    ),
                                  ),
                                  Text('2:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Derecho a la acción',
                                    ),
                                  ),
                                  Text('3:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('4:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('5:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Charlas en bata blanca',
                                    ),
                                  ),
                                  Text('6:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

      case 1: // Martes
        return Container(
          width: double.infinity,
          color: MyColors.white,
          child: ExpandableNotifier(
            child: ExpandablePanel(
              header: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text('Martes'),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.secondaryBackground,
                  ),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    child: Text('8:00 am - 6:00 pm'),
                  ),
                ),
              ),
              expanded: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: const EdgeInsets.all(5.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      // 8:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('8:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 9:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('9:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 10:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Intervención cultural',
                                    ),
                                  ),
                                  Text('10:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 11:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Efecto naranja',
                                    ),
                                  ),
                                  Text('11:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 12:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'La visión del coyote',
                                    ),
                                  ),
                                  Text('12:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 1:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Ingenio creativo',
                                    ),
                                  ),
                                  Text('1:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 2:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('2:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 3:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('3:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 4:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Marketing now',
                                    ),
                                  ),
                                  Text('4:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 5:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('5:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 6:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('6:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

      case 2: // Miercoles
        return Container(
          width: double.infinity,
          color: MyColors.white,
          child: ExpandableNotifier(
            child: ExpandablePanel(
              header: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text('Miercoles'),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.secondaryBackground,
                  ),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    child: Text('8:00 am - 6:00 pm'),
                  ),
                ),
              ),
              expanded: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: const EdgeInsets.all(5.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      // 8:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Comunicoyotes',
                                    ),
                                  ),
                                  Text('8:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 9:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('9:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 10:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('10:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 11:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Coyotes al aire',
                                    ),
                                  ),
                                  Text('11:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 12:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Ingenio creativo',
                                    ),
                                  ),
                                  Text('12:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 1:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'De mente abierta',
                                    ),
                                  ),
                                  Text('1:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 2:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Digi X',
                                    ),
                                  ),
                                  Text('2:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 3:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('3:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 4:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'De zaz',
                                    ),
                                  ),
                                  Text('4:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 5:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Decibel cultural',
                                    ),
                                  ),
                                  Text('5:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 6:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Jaque mate',
                                    ),
                                  ),
                                  Text('6:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

      case 3: //Jueves
        return Container(
          width: double.infinity,
          color: MyColors.white,
          child: ExpandableNotifier(
            child: ExpandablePanel(
              header: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text('Jueves'),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.secondaryBackground,
                  ),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    child: Text('8:00 am - 6:00 pm'),
                  ),
                ),
              ),
              expanded: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: const EdgeInsets.all(5.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      // 8:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('8:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 9:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('9:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 10:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Ciens',
                                    ),
                                  ),
                                  Text('10:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 11:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Speaking zone',
                                    ),
                                  ),
                                  Text('11:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 12:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Coyote Talk show',
                                    ),
                                  ),
                                  Text('12:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 1:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Impulsando tu talento',
                                    ),
                                  ),
                                  Text('1:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 2:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Xochi sports',
                                    ),
                                  ),
                                  Text('2:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 3:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Gaba gaba',
                                    ),
                                  ),
                                  Text('3:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 4:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Factor X',
                                    ),
                                  ),
                                  Text('4:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 5:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Psicología contigo',
                                    ),
                                  ),
                                  Text('5:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 6:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('6:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

      case 4: // Viernes
        return Container(
          width: double.infinity,
          color: MyColors.white,
          child: ExpandableNotifier(
            child: ExpandablePanel(
              header: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text('Viernes'),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.secondaryBackground,
                  ),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    child: Text('8:00 am - 6:00 pm'),
                  ),
                ),
              ),
              expanded: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: const EdgeInsets.all(5.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      // 8:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('8:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 9:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('9:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 10:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Marketing times',
                                    ),
                                  ),
                                  Text('10:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 11:00 am
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Nutrición inteligente',
                                    ),
                                  ),
                                  Text('11:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 12:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Geeks en control',
                                    ),
                                  ),
                                  Text('12:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 1:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Primer plano',
                                    ),
                                  ),
                                  Text('1:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 2:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Digi X',
                                    ),
                                  ),
                                  Text('2:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 3:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Cronos',
                                    ),
                                  ),
                                  Text('3:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 4:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Raices mentales',
                                    ),
                                  ),
                                  Text('4:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 5:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Derecho en acción',
                                    ),
                                  ),
                                  Text('5:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // 6:00 pm
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('6:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );

      default:
        return Container(
          width: double.infinity,
          color: MyColors.white,
          child: ExpandableNotifier(
            child: ExpandablePanel(
              header: const Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 10, 0, 0),
                child: Text('Martes'),
              ),
              collapsed: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: 40,
                  decoration: BoxDecoration(
                    color: MyColors.secondaryBackground,
                  ),
                  child: const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                    child: Text('8:00 am - 6:00 pm'),
                  ),
                ),
              ),
              expanded: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ListView(
                    padding: const EdgeInsets.all(5.0),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('8:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('9:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('10:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Entre eventos y conciertos',
                                    ),
                                  ),
                                  Text('11:00 am'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Radio Snak',
                                    ),
                                  ),
                                  Text('12:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'La voz y la lectura del coyote',
                                    ),
                                  ),
                                  Text('1:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Conexión Mexicali',
                                    ),
                                  ),
                                  Text('2:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Derecho a la acción',
                                    ),
                                  ),
                                  Text('3:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('4:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Música con huella',
                                    ),
                                  ),
                                  Text('5:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 50,
                        decoration: BoxDecoration(
                          color: MyColors.secondaryBackground,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 20, 0),
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
                                    child: Text(
                                      'Charlas en bata blanca',
                                    ),
                                  ),
                                  Text('6:00 pm'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
    }
  }
}
