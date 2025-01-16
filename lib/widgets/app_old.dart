// import '/flutter_flow/flutter_flow_icon_button.dart';
// import '/flutter_flow/flutter_flow_theme.dart';
// import '/flutter_flow/flutter_flow_util.dart';
// import '/flutter_flow/flutter_flow_widgets.dart';
// import 'package:expandable/expandable.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:just_audio/just_audio.dart';
// import 'package:provider/provider.dart';

// import 'app_model.dart';
// export 'app_model.dart';

// class AppWidget2 extends StatefulWidget {
//   const AppWidget2({super.key});

//   @override
//   State<AppWidget2> createState() => _AppWidget2State();
// }

// class _AppWidget2State extends State<AppWidget2> with TickerProviderStateMixin {
//   late AppModel _model;

//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   _model = createModel(context, () => AppModel());

//   //   _model.tabBarController = TabController(
//   //     vsync: this,
//   //     length: 3,
//   //     initialIndex: 0,
//   //   )..addListener(() => setState(() {}));
//   //   _model.expandableExpandableController1 =
//   //       ExpandableController(initialExpanded: false);
//   //   _model.expandableExpandableController2 =
//   //       ExpandableController(initialExpanded: false);
//   //   _model.expandableExpandableController3 =
//   //       ExpandableController(initialExpanded: false);
//   //   _model.expandableExpandableController4 =
//   //       ExpandableController(initialExpanded: false);
//   //   _model.expandableExpandableController5 =
//   //       ExpandableController(initialExpanded: false);
//   // }

//   // @override
//   // void dispose() {
//   //   _model.dispose();

//   //   super.dispose();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         key: scaffoldKey,
//         backgroundColor: FlutterFlowTheme.of(context).primary,
//         body: SafeArea(
//           top: true,
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(8),
//                       child: Image.asset(
//                         'assets/images/LogoMini.png',
//                         width: 30,
//                         height: 30,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
//                       child: Text(
//                         'Radio Xochicalco',
//                         style: FlutterFlowTheme.of(context).bodyMedium.override(
//                               fontFamily: 'Readex Pro',
//                               fontSize: 20,
//                               letterSpacing: 0,
//                             ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
//                   child: Column(
//                     children: [
//                       Align(
//                         alignment: Alignment(0, 0),
//                         child: TabBar(
//                           labelColor: FlutterFlowTheme.of(context).primaryText,
//                           unselectedLabelColor:
//                               FlutterFlowTheme.of(context).tertiary,
//                           labelStyle:
//                               FlutterFlowTheme.of(context).labelMedium.override(
//                                     fontFamily: 'Readex Pro',
//                                     letterSpacing: 0,
//                                   ),
//                           unselectedLabelStyle: TextStyle(),
//                           indicatorColor:
//                               FlutterFlowTheme.of(context).secondary,
//                           padding: EdgeInsets.all(4),
//                           tabs: [
//                             Tab(
//                               text: 'Reproductor',
//                             ),
//                             Tab(
//                               text: 'Programación',
//                             ),
//                             Tab(
//                               text: 'Biblioteca',
//                             ),
//                           ],
//                           controller: _model.tabBarController,
//                           onTap: (i) async {
//                             [() async {}, () async {}, () async {}][i]();
//                           },
//                         ),
//                       ),
//                       Expanded(
//                         child: TabBarView(
//                           controller: _model.tabBarController,
//                           children: [
//                             Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   mainAxisSize: MainAxisSize.max,
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Expanded(
//                                       child: Container(
//                                         width: 100,
//                                         height: 30,
//                                         decoration: BoxDecoration(
//                                           color: FlutterFlowTheme.of(context)
//                                               .secondary,
//                                         ),
//                                         alignment: AlignmentDirectional(0, 0),
//                                         child: Text(
//                                           'Transmisión en vivo',
//                                           style: FlutterFlowTheme.of(context)
//                                               .bodyLarge
//                                               .override(
//                                                 fontFamily: 'Readex Pro',
//                                                 letterSpacing: 0,
//                                               ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Align(
//                                   alignment: AlignmentDirectional(0, 0),
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 50, 0, 30),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         ClipRRect(
//                                           borderRadius:
//                                               BorderRadius.circular(8),
//                                           child: Image.asset(
//                                             'assets/images/Logo.png',
//                                             width: 150,
//                                             height: 150,
//                                             fit: BoxFit.contain,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsetsDirectional.fromSTEB(
//                                       0, 30, 0, 30),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       Builder(
//                                         builder: (context) {
//                                           if (_model.streaming == false) {
//                                             return Align(
//                                               alignment:
//                                                   AlignmentDirectional(0, 0),
//                                               child: FlutterFlowIconButton(
//                                                 borderColor:
//                                                     FlutterFlowTheme.of(context)
//                                                         .primary,
//                                                 borderRadius: 90,
//                                                 borderWidth: 1,
//                                                 buttonSize: 90,
//                                                 fillColor:
//                                                     FlutterFlowTheme.of(context)
//                                                         .secondary,
//                                                 icon: Icon(
//                                                   Icons.play_arrow,
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                   size: 70,
//                                                 ),
//                                                 onPressed: () async {
//                                                   _model.streaming = true;
//                                                   setState(() {});
//                                                   _model.soundPlayer ??=
//                                                       AudioPlayer();
//                                                   if (_model
//                                                       .soundPlayer!.playing) {
//                                                     await _model.soundPlayer!
//                                                         .stop();
//                                                   }
//                                                   _model.soundPlayer!
//                                                       .setVolume(1);
//                                                   _model.soundPlayer!
//                                                       .setUrl(
//                                                           'https://tv.radiohosting.online:9002/stream')
//                                                       .then((_) => _model
//                                                           .soundPlayer!
//                                                           .play());
//                                                 },
//                                               ),
//                                             );
//                                           } else {
//                                             return Align(
//                                               alignment:
//                                                   AlignmentDirectional(0, 0),
//                                               child: FlutterFlowIconButton(
//                                                 borderColor:
//                                                     FlutterFlowTheme.of(context)
//                                                         .primary,
//                                                 borderRadius: 90,
//                                                 borderWidth: 1,
//                                                 buttonSize: 90,
//                                                 fillColor:
//                                                     FlutterFlowTheme.of(context)
//                                                         .secondary,
//                                                 icon: Icon(
//                                                   Icons.stop,
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                   size: 70,
//                                                 ),
//                                                 onPressed: () async {
//                                                   _model.streaming = false;
//                                                   setState(() {});
//                                                   _model.soundPlayer?.stop();
//                                                 },
//                                               ),
//                                             );
//                                           }
//                                         },
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Align(
//                                   alignment: AlignmentDirectional(0, 0),
//                                   child: Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         0, 50, 0, 30),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   5, 0, 5, 0),
//                                           child: FlutterFlowIconButton(
//                                             borderColor:
//                                                 FlutterFlowTheme.of(context)
//                                                     .primaryBackground,
//                                             borderRadius: 50,
//                                             borderWidth: 1,
//                                             buttonSize: 50,
//                                             fillColor: Color(0x004B39EF),
//                                             icon: FaIcon(
//                                               FontAwesomeIcons.facebookF,
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryText,
//                                               size: 24,
//                                             ),
//                                             onPressed: () async {
//                                               await launchURL(
//                                                   'https://www.facebook.com/RadioXochicalco');
//                                             },
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   5, 0, 5, 0),
//                                           child: FlutterFlowIconButton(
//                                             borderColor:
//                                                 FlutterFlowTheme.of(context)
//                                                     .primaryBackground,
//                                             borderRadius: 50,
//                                             borderWidth: 1,
//                                             buttonSize: 50,
//                                             fillColor: Color(0x004B39EF),
//                                             icon: FaIcon(
//                                               FontAwesomeIcons.youtube,
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryText,
//                                               size: 24,
//                                             ),
//                                             onPressed: () async {
//                                               await launchURL(
//                                                   'https://www.youtube.com/c/UniversidadXochicalco');
//                                             },
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   5, 0, 5, 0),
//                                           child: FlutterFlowIconButton(
//                                             borderColor:
//                                                 FlutterFlowTheme.of(context)
//                                                     .primaryBackground,
//                                             borderRadius: 50,
//                                             borderWidth: 1,
//                                             buttonSize: 50,
//                                             fillColor: Color(0x004B39EF),
//                                             icon: FaIcon(
//                                               FontAwesomeIcons.instagram,
//                                               color:
//                                                   FlutterFlowTheme.of(context)
//                                                       .primaryText,
//                                               size: 24,
//                                             ),
//                                             onPressed: () async {
//                                               await launchURL(
//                                                   'https://www.instagram.com/radio_xochicalco/');
//                                             },
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               mainAxisSize: MainAxisSize.max,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Expanded(
//                                   child: Container(
//                                     decoration: BoxDecoration(
//                                       color: FlutterFlowTheme.of(context)
//                                           .primaryBackground,
//                                     ),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           20, 10, 20, 0),
//                                       child: ListView(
//                                         padding: EdgeInsets.fromLTRB(
//                                           0,
//                                           10,
//                                           0,
//                                           10,
//                                         ),
//                                         shrinkWrap: true,
//                                         scrollDirection: Axis.vertical,
//                                         children: [
//                                           Container(
//                                             child: Container(
//                                               width: double.infinity,
//                                               color: Colors.white,
//                                               child: ExpandableNotifier(
//                                                 controller: _model
//                                                     .expandableExpandableController1,
//                                                 child: ExpandablePanel(
//                                                   header: Padding(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 20, 0, 0, 0),
//                                                     child: Text(
//                                                       'Lunes',
//                                                       style:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .headlineSmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Outfit',
//                                                                 color: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .secondaryText,
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                     ),
//                                                   ),
//                                                   collapsed: Container(
//                                                     width: MediaQuery.sizeOf(
//                                                             context)
//                                                         .width,
//                                                     height: 40,
//                                                     decoration: BoxDecoration(
//                                                       color: FlutterFlowTheme
//                                                               .of(context)
//                                                           .secondaryBackground,
//                                                     ),
//                                                     child: Align(
//                                                       alignment:
//                                                           AlignmentDirectional(
//                                                               -1, 0),
//                                                       child: Padding(
//                                                         padding:
//                                                             EdgeInsetsDirectional
//                                                                 .fromSTEB(20, 0,
//                                                                     0, 0),
//                                                         child: Text(
//                                                           '8:00 am - 6:00 pm',
//                                                           style: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .bodyMedium
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 color: Color(
//                                                                     0x8A000000),
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   expanded: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       ListView(
//                                                         padding:
//                                                             EdgeInsets.zero,
//                                                         shrinkWrap: true,
//                                                         scrollDirection:
//                                                             Axis.vertical,
//                                                         children: [
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '8:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '9:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '10:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Entre eventos y conciertos',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '11:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Radio Snak',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '12:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'La voz y la lectura del coyote',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '1:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Conexión Mexicali',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '2:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Derecho a la acción',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '3:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '4:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '5:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Charlas en bata blanca',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '6:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ].divide(SizedBox(
//                                                             height: 10)),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   theme: ExpandableThemeData(
//                                                     tapHeaderToExpand: true,
//                                                     tapBodyToExpand: false,
//                                                     tapBodyToCollapse: false,
//                                                     headerAlignment:
//                                                         ExpandablePanelHeaderAlignment
//                                                             .center,
//                                                     hasIcon: true,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                             decoration: BoxDecoration(),
//                                             child: Container(
//                                               width: double.infinity,
//                                               color: Colors.white,
//                                               child: ExpandableNotifier(
//                                                 controller: _model
//                                                     .expandableExpandableController2,
//                                                 child: ExpandablePanel(
//                                                   header: Padding(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 20, 0, 0, 0),
//                                                     child: Text(
//                                                       'Martes',
//                                                       style:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .headlineSmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Outfit',
//                                                                 color: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .secondaryText,
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                     ),
//                                                   ),
//                                                   collapsed: Container(
//                                                     width: MediaQuery.sizeOf(
//                                                             context)
//                                                         .width,
//                                                     height: 40,
//                                                     decoration: BoxDecoration(
//                                                       color: FlutterFlowTheme
//                                                               .of(context)
//                                                           .secondaryBackground,
//                                                     ),
//                                                     child: Align(
//                                                       alignment:
//                                                           AlignmentDirectional(
//                                                               -1, 0),
//                                                       child: Padding(
//                                                         padding:
//                                                             EdgeInsetsDirectional
//                                                                 .fromSTEB(20, 0,
//                                                                     0, 0),
//                                                         child: Text(
//                                                           '8:00 am - 6:00 pm',
//                                                           style: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .bodyMedium
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 color: Color(
//                                                                     0x8A000000),
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   expanded: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       ListView(
//                                                         padding:
//                                                             EdgeInsets.zero,
//                                                         shrinkWrap: true,
//                                                         scrollDirection:
//                                                             Axis.vertical,
//                                                         children: [
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '8:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '9:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Intervención cultural',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '10:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Efecto naranja',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '11:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'La visión del coyote',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '12:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Ingenio creativo',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '1:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '2:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Text(
//                                                                         'Música con huella',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                       Text(
//                                                                         '3:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Marketing now',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '4:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Text(
//                                                                         'Música con huella',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                       Text(
//                                                                         '5:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Text(
//                                                                         'Música con huella',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                       Text(
//                                                                         '6:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ].divide(SizedBox(
//                                                             height: 10)),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   theme: ExpandableThemeData(
//                                                     tapHeaderToExpand: true,
//                                                     tapBodyToExpand: false,
//                                                     tapBodyToCollapse: false,
//                                                     headerAlignment:
//                                                         ExpandablePanelHeaderAlignment
//                                                             .center,
//                                                     hasIcon: true,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                             decoration: BoxDecoration(),
//                                             child: Container(
//                                               width: double.infinity,
//                                               color: Colors.white,
//                                               child: ExpandableNotifier(
//                                                 controller: _model
//                                                     .expandableExpandableController3,
//                                                 child: ExpandablePanel(
//                                                   header: Padding(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 20, 0, 0, 0),
//                                                     child: Text(
//                                                       'Miércoles',
//                                                       style:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .headlineSmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Outfit',
//                                                                 color: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .secondaryText,
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                     ),
//                                                   ),
//                                                   collapsed: Container(
//                                                     width: MediaQuery.sizeOf(
//                                                             context)
//                                                         .width,
//                                                     height: 40,
//                                                     decoration: BoxDecoration(
//                                                       color: FlutterFlowTheme
//                                                               .of(context)
//                                                           .secondaryBackground,
//                                                     ),
//                                                     child: Align(
//                                                       alignment:
//                                                           AlignmentDirectional(
//                                                               -1, 0),
//                                                       child: Padding(
//                                                         padding:
//                                                             EdgeInsetsDirectional
//                                                                 .fromSTEB(20, 0,
//                                                                     0, 0),
//                                                         child: Text(
//                                                           '8:00 am - 6:00 pm',
//                                                           style: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .bodyMedium
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 color: Color(
//                                                                     0x8A000000),
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   expanded: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       ListView(
//                                                         padding:
//                                                             EdgeInsets.zero,
//                                                         shrinkWrap: true,
//                                                         scrollDirection:
//                                                             Axis.vertical,
//                                                         children: [
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Comunicoyotes',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '8:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '9:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Musica con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '10:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Coyotes al aire',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '11:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Ingenio creativo',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '12:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'De mente abierta',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '1:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Digi X',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '2:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '3:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'De zaz',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '4:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Decibel cultural',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '5:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Jaque mate',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '6:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ].divide(SizedBox(
//                                                             height: 10)),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   theme: ExpandableThemeData(
//                                                     tapHeaderToExpand: true,
//                                                     tapBodyToExpand: false,
//                                                     tapBodyToCollapse: false,
//                                                     headerAlignment:
//                                                         ExpandablePanelHeaderAlignment
//                                                             .center,
//                                                     hasIcon: true,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                             decoration: BoxDecoration(),
//                                             child: Container(
//                                               width: double.infinity,
//                                               color: Colors.white,
//                                               child: ExpandableNotifier(
//                                                 controller: _model
//                                                     .expandableExpandableController4,
//                                                 child: ExpandablePanel(
//                                                   header: Padding(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 20, 0, 0, 0),
//                                                     child: Text(
//                                                       'Jueves',
//                                                       style:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .headlineSmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Outfit',
//                                                                 color: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .secondaryText,
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                     ),
//                                                   ),
//                                                   collapsed: Container(
//                                                     width: MediaQuery.sizeOf(
//                                                             context)
//                                                         .width,
//                                                     height: 40,
//                                                     decoration: BoxDecoration(
//                                                       color: FlutterFlowTheme
//                                                               .of(context)
//                                                           .secondaryBackground,
//                                                     ),
//                                                     child: Align(
//                                                       alignment:
//                                                           AlignmentDirectional(
//                                                               -1, 0),
//                                                       child: Padding(
//                                                         padding:
//                                                             EdgeInsetsDirectional
//                                                                 .fromSTEB(20, 0,
//                                                                     0, 0),
//                                                         child: Text(
//                                                           '8:00 am - 6:00 pm',
//                                                           style: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .bodyMedium
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 color: Color(
//                                                                     0x8A000000),
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   expanded: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       ListView(
//                                                         padding:
//                                                             EdgeInsets.zero,
//                                                         shrinkWrap: true,
//                                                         scrollDirection:
//                                                             Axis.vertical,
//                                                         children: [
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '8:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '9:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Ciens',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '10:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Speaking zone',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '11:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Coyote Talk show',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '12:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Impulsando tu talento',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '1:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Xochi sports',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '2:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Gaba gaba',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '3:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Factor X',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '4:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Psicología contigo',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '5:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '6:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ].divide(SizedBox(
//                                                             height: 10)),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   theme: ExpandableThemeData(
//                                                     tapHeaderToExpand: true,
//                                                     tapBodyToExpand: false,
//                                                     tapBodyToCollapse: false,
//                                                     headerAlignment:
//                                                         ExpandablePanelHeaderAlignment
//                                                             .center,
//                                                     hasIcon: true,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           Container(
//                                             decoration: BoxDecoration(),
//                                             child: Container(
//                                               width: double.infinity,
//                                               color: Colors.white,
//                                               child: ExpandableNotifier(
//                                                 controller: _model
//                                                     .expandableExpandableController5,
//                                                 child: ExpandablePanel(
//                                                   header: Padding(
//                                                     padding:
//                                                         EdgeInsetsDirectional
//                                                             .fromSTEB(
//                                                                 20, 0, 0, 0),
//                                                     child: Text(
//                                                       'Viernes',
//                                                       style:
//                                                           FlutterFlowTheme.of(
//                                                                   context)
//                                                               .headlineSmall
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Outfit',
//                                                                 color: FlutterFlowTheme.of(
//                                                                         context)
//                                                                     .secondaryText,
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                     ),
//                                                   ),
//                                                   collapsed: Container(
//                                                     width: MediaQuery.sizeOf(
//                                                             context)
//                                                         .width,
//                                                     height: 40,
//                                                     decoration: BoxDecoration(
//                                                       color: FlutterFlowTheme
//                                                               .of(context)
//                                                           .secondaryBackground,
//                                                     ),
//                                                     child: Align(
//                                                       alignment:
//                                                           AlignmentDirectional(
//                                                               -1, 0),
//                                                       child: Padding(
//                                                         padding:
//                                                             EdgeInsetsDirectional
//                                                                 .fromSTEB(20, 0,
//                                                                     0, 0),
//                                                         child: Text(
//                                                           '8:00 am - 6:00 pm',
//                                                           style: FlutterFlowTheme
//                                                                   .of(context)
//                                                               .bodyMedium
//                                                               .override(
//                                                                 fontFamily:
//                                                                     'Readex Pro',
//                                                                 color: Color(
//                                                                     0x8A000000),
//                                                                 letterSpacing:
//                                                                     0,
//                                                               ),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   expanded: Column(
//                                                     mainAxisSize:
//                                                         MainAxisSize.max,
//                                                     children: [
//                                                       ListView(
//                                                         padding:
//                                                             EdgeInsets.zero,
//                                                         shrinkWrap: true,
//                                                         scrollDirection:
//                                                             Axis.vertical,
//                                                         children: [
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '8:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '9:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Marketing times',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '10:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Nutrición inteligente',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '11:00 am',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Geeks en control',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '12:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Primer plano',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '1:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Digi X',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '2:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Cronos',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '3:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Raices mentales',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '4:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Derecho en acción',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '5:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                           Container(
//                                                             width: 100,
//                                                             height: 50,
//                                                             decoration:
//                                                                 BoxDecoration(
//                                                               color: FlutterFlowTheme
//                                                                       .of(context)
//                                                                   .secondaryBackground,
//                                                               borderRadius:
//                                                                   BorderRadius
//                                                                       .only(
//                                                                 bottomLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 bottomRight:
//                                                                     Radius
//                                                                         .circular(
//                                                                             10),
//                                                                 topLeft: Radius
//                                                                     .circular(
//                                                                         10),
//                                                                 topRight: Radius
//                                                                     .circular(
//                                                                         10),
//                                                               ),
//                                                             ),
//                                                             child: Padding(
//                                                               padding:
//                                                                   EdgeInsetsDirectional
//                                                                       .fromSTEB(
//                                                                           20,
//                                                                           0,
//                                                                           20,
//                                                                           0),
//                                                               child: Column(
//                                                                 mainAxisSize:
//                                                                     MainAxisSize
//                                                                         .max,
//                                                                 mainAxisAlignment:
//                                                                     MainAxisAlignment
//                                                                         .center,
//                                                                 children: [
//                                                                   Row(
//                                                                     mainAxisSize:
//                                                                         MainAxisSize
//                                                                             .max,
//                                                                     mainAxisAlignment:
//                                                                         MainAxisAlignment
//                                                                             .spaceBetween,
//                                                                     children: [
//                                                                       Flexible(
//                                                                         child:
//                                                                             Text(
//                                                                           'Música con huella',
//                                                                           style: FlutterFlowTheme.of(context)
//                                                                               .labelLarge
//                                                                               .override(
//                                                                                 fontFamily: 'Readex Pro',
//                                                                                 letterSpacing: 0,
//                                                                               ),
//                                                                         ),
//                                                                       ),
//                                                                       Text(
//                                                                         '6:00 pm',
//                                                                         style: FlutterFlowTheme.of(context)
//                                                                             .labelLarge
//                                                                             .override(
//                                                                               fontFamily: 'Readex Pro',
//                                                                               letterSpacing: 0,
//                                                                             ),
//                                                                       ),
//                                                                     ],
//                                                                   ),
//                                                                 ],
//                                                               ),
//                                                             ),
//                                                           ),
//                                                         ].divide(SizedBox(
//                                                             height: 10)),
//                                                       ),
//                                                     ],
//                                                   ),
//                                                   theme: ExpandableThemeData(
//                                                     tapHeaderToExpand: true,
//                                                     tapBodyToExpand: false,
//                                                     tapBodyToCollapse: false,
//                                                     headerAlignment:
//                                                         ExpandablePanelHeaderAlignment
//                                                             .center,
//                                                     hasIcon: true,
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ].divide(SizedBox(height: 10)),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Container(
//                               width: 100,
//                               height: 100,
//                               decoration: BoxDecoration(
//                                 color: FlutterFlowTheme.of(context)
//                                     .primaryBackground,
//                               ),
//                               child: Column(
//                                 mainAxisSize: MainAxisSize.max,
//                                 children: [
//                                   Align(
//                                     alignment: AlignmentDirectional(0, 0),
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           10, 20, 10, 0),
//                                       child: Row(
//                                         mainAxisSize: MainAxisSize.max,
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceEvenly,
//                                         children: [
//                                           ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(8),
//                                             child: Image.asset(
//                                               'assets/images/Icono01.png',
//                                               width: 50,
//                                               height: 50,
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                           ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(8),
//                                             child: Image.asset(
//                                               'assets/images/Icono02.png',
//                                               width: 50,
//                                               height: 50,
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                           ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(8),
//                                             child: Image.asset(
//                                               'assets/images/Icono03.png',
//                                               width: 50,
//                                               height: 50,
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                           ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(8),
//                                             child: Image.asset(
//                                               'assets/images/Icono04.png',
//                                               width: 50,
//                                               height: 50,
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                           ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(8),
//                                             child: Image.asset(
//                                               'assets/images/Icono05.png',
//                                               width: 50,
//                                               height: 50,
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                           ClipRRect(
//                                             borderRadius:
//                                                 BorderRadius.circular(8),
//                                             child: Image.asset(
//                                               'assets/images/Icono06.png',
//                                               width: 50,
//                                               height: 50,
//                                               fit: BoxFit.cover,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsetsDirectional.fromSTEB(
//                                         20, 20, 20, 0),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.max,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text(
//                                           'Disfruta todos nuestros Podcast',
//                                           style: FlutterFlowTheme.of(context)
//                                               .titleMedium
//                                               .override(
//                                                 fontFamily: 'Readex Pro',
//                                                 color:
//                                                     FlutterFlowTheme.of(context)
//                                                         .secondaryText,
//                                                 letterSpacing: 0,
//                                               ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: Padding(
//                                       padding: EdgeInsetsDirectional.fromSTEB(
//                                           20, 20, 20, 20),
//                                       child: Container(
//                                         decoration: BoxDecoration(
//                                           color: FlutterFlowTheme.of(context)
//                                               .secondaryBackground,
//                                         ),
//                                         child: Padding(
//                                           padding:
//                                               EdgeInsetsDirectional.fromSTEB(
//                                                   10, 0, 10, 0),
//                                           child: GridView(
//                                             padding: EdgeInsets.fromLTRB(
//                                               0,
//                                               10,
//                                               0,
//                                               10,
//                                             ),
//                                             gridDelegate:
//                                                 SliverGridDelegateWithFixedCrossAxisCount(
//                                               crossAxisCount: 3,
//                                               crossAxisSpacing: 10,
//                                               mainAxisSpacing: 10,
//                                               childAspectRatio: 1,
//                                             ),
//                                             scrollDirection: Axis.vertical,
//                                             children: [
//                                               Container(
//                                                 width: 100,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                 ),
//                                                 child: InkWell(
//                                                   splashColor:
//                                                       Colors.transparent,
//                                                   focusColor:
//                                                       Colors.transparent,
//                                                   hoverColor:
//                                                       Colors.transparent,
//                                                   highlightColor:
//                                                       Colors.transparent,
//                                                   onTap: () async {
//                                                     await launchURL(
//                                                         'https://open.spotify.com/show/39RoNcD5WWwwsM1YtOQyVJ?si=ccc8ad0518d74c10');
//                                                   },
//                                                   child: ClipRRect(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             8),
//                                                     child: Image.asset(
//                                                       'assets/images/Logo_LaVozDelCoyote.jpg',
//                                                       width: 300,
//                                                       height: 200,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 width: 100,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                 ),
//                                                 child: InkWell(
//                                                   splashColor:
//                                                       Colors.transparent,
//                                                   focusColor:
//                                                       Colors.transparent,
//                                                   hoverColor:
//                                                       Colors.transparent,
//                                                   highlightColor:
//                                                       Colors.transparent,
//                                                   onTap: () async {
//                                                     await launchURL(
//                                                         'https://open.spotify.com/show/1GJLKemOJAhc2Wa3JRf6R4?si=e4cd92354ef34321');
//                                                   },
//                                                   child: ClipRRect(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             8),
//                                                     child: Image.asset(
//                                                       'assets/images/Logo_LaManzanaVerde_.png',
//                                                       width: 300,
//                                                       height: 200,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 width: 100,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                 ),
//                                                 child: InkWell(
//                                                   splashColor:
//                                                       Colors.transparent,
//                                                   focusColor:
//                                                       Colors.transparent,
//                                                   hoverColor:
//                                                       Colors.transparent,
//                                                   highlightColor:
//                                                       Colors.transparent,
//                                                   onTap: () async {
//                                                     await launchURL(
//                                                         'https://open.spotify.com/show/6mfd0GfcTkfEdMYfVUaXw6?si=79ae6477b83b4100');
//                                                   },
//                                                   child: ClipRRect(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             8),
//                                                     child: Image.asset(
//                                                       'assets/images/Logo_LaLecturaDelCoyote.png',
//                                                       width: 300,
//                                                       height: 200,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 width: 100,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                 ),
//                                                 child: InkWell(
//                                                   splashColor:
//                                                       Colors.transparent,
//                                                   focusColor:
//                                                       Colors.transparent,
//                                                   hoverColor:
//                                                       Colors.transparent,
//                                                   highlightColor:
//                                                       Colors.transparent,
//                                                   onTap: () async {
//                                                     await launchURL(
//                                                         'https://open.spotify.com/show/2YWWVSzpRucjW4czFkAupc?si=cb6fa97664244546');
//                                                   },
//                                                   child: ClipRRect(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             8),
//                                                     child: Image.asset(
//                                                       'assets/images/Logo_ImpulsaTuTalento.png',
//                                                       width: 300,
//                                                       height: 200,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 width: 100,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                 ),
//                                                 child: InkWell(
//                                                   splashColor:
//                                                       Colors.transparent,
//                                                   focusColor:
//                                                       Colors.transparent,
//                                                   hoverColor:
//                                                       Colors.transparent,
//                                                   highlightColor:
//                                                       Colors.transparent,
//                                                   onTap: () async {
//                                                     await launchURL(
//                                                         'https://open.spotify.com/show/1hRAbLXjzNojV8vJfvrvkv?si=5ed0fb17beea41fa');
//                                                   },
//                                                   child: ClipRRect(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             8),
//                                                     child: Image.asset(
//                                                       'assets/images/Logo_IntervencionCultura.png',
//                                                       width: 300,
//                                                       height: 200,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 width: 100,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                 ),
//                                                 child: InkWell(
//                                                   splashColor:
//                                                       Colors.transparent,
//                                                   focusColor:
//                                                       Colors.transparent,
//                                                   hoverColor:
//                                                       Colors.transparent,
//                                                   highlightColor:
//                                                       Colors.transparent,
//                                                   onTap: () async {
//                                                     await launchURL(
//                                                         'https://open.spotify.com/show/7CiWi6hZhGe9zM1tVYcXRX?si=b1c558d347754325');
//                                                   },
//                                                   child: ClipRRect(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             8),
//                                                     child: Image.asset(
//                                                       'assets/images/Logo_TreandingTopicShow.png',
//                                                       width: 300,
//                                                       height: 200,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                               Container(
//                                                 width: 100,
//                                                 height: 100,
//                                                 decoration: BoxDecoration(
//                                                   color: FlutterFlowTheme.of(
//                                                           context)
//                                                       .primaryText,
//                                                 ),
//                                                 child: InkWell(
//                                                   splashColor:
//                                                       Colors.transparent,
//                                                   focusColor:
//                                                       Colors.transparent,
//                                                   hoverColor:
//                                                       Colors.transparent,
//                                                   highlightColor:
//                                                       Colors.transparent,
//                                                   onTap: () async {
//                                                     await launchURL(
//                                                         'https://open.spotify.com/show/7Hdf8sV2kkTcM1FnPtw6Xd?si=ed88027a3dc14200');
//                                                   },
//                                                   child: ClipRRect(
//                                                     borderRadius:
//                                                         BorderRadius.circular(
//                                                             8),
//                                                     child: Image.asset(
//                                                       'assets/images/Logo_DeMenteAbierta.png',
//                                                       width: 300,
//                                                       height: 200,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
