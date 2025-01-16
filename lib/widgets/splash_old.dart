import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:radio_xochicalco_app/utils/my_colors.dart';

class SplashWidget2 extends StatefulWidget {
  const SplashWidget2({super.key});

  @override
  State<SplashWidget2> createState() => _SplashWidget2State();
}

class _SplashWidget2State extends State<SplashWidget2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // key: scaffoldKey,
        backgroundColor: MyColors.primary, //FlutterFlowTheme.of(context).primary,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * .95,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(232, 232, 232, 0.8), //FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        //alignment: const AlignmentDirectional(0, 0),
                        image: Image.asset(
                          'assets/images/fondo_splash.png',
                        ).image,
                      ),
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: const AlignmentDirectional(0, 0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                      'assets/images/logo.png',
                                      width: 160,
                                      height: 160,
                                      fit: BoxFit.contain,
                                      alignment: const Alignment(0, 0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0, 0),
                                    child: Lottie.asset(
                                      'assets/animations/loading_bar.json',
                                      width: 160,
                                      height: 50,
                                      fit: BoxFit.fitWidth,
                                      animate: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );  
  }
  }
