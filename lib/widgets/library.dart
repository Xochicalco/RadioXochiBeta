import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
// import 'package:radio_xochicalco_app/utils/my_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class LibraryWidget extends StatefulWidget {
  const LibraryWidget({super.key});
  
  @override
  State<LibraryWidget> createState() => _LibraryWidgetState(); 
}

class _LibraryWidgetState extends State<LibraryWidget> {

  Future<void> launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

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
              children: [
                // La Voz de Coyote
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                  child: InkWell(
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
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/images/logo_LaVozDelCoyote.jpg',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'La Voz del Coyote',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 20,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 8, 0),
                                      child: AutoSizeText(
                                        'Spotify',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                  child: Icon(
                                    MdiIcons.spotify,
                                    color: const Color.fromARGB(255, 30, 215, 96),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () async {
                      await launchURL(
                          'https://open.spotify.com/show/39RoNcD5WWwwsM1YtOQyVJ?si=ccc8ad0518d74c10');
                    },
                  ),
                ),
                // La Manzana Verde
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                  child: InkWell(
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
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/images/logo_LaManzanaVerde.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'La Manzana Verde',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 20,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 8, 0),
                                      child: AutoSizeText(
                                        'Spotify',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                  child: Icon(
                                    MdiIcons.spotify,
                                    color: const Color.fromARGB(255, 30, 215, 96),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () async {
                      await launchURL(
                          'https://open.spotify.com/show/1GJLKemOJAhc2Wa3JRf6R4?si=e4cd92354ef34321');
                    },
                  ),
                ),
                // La Lectura del Coyote
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                  child: InkWell(
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
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/images/logo_LaLecturaDelCoyote.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'La Lectura del Coyote',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 20,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 8, 0),
                                      child: AutoSizeText(
                                        'Spotify',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                  child: Icon(
                                    MdiIcons.spotify,
                                    color: const Color.fromARGB(255, 30, 215, 96),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () async {
                      await launchURL(
                          'https://open.spotify.com/show/6mfd0GfcTkfEdMYfVUaXw6?si=79ae6477b83b4100');
                    },
                  ),
                ),
                // Trending Topic Show
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                  child: InkWell(
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
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/images/logo_TreandingTopicShow.png',
                                  width: 80,
                                  height: 36,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Trending Topic Show',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 20,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 8, 0),
                                      child: AutoSizeText(
                                        'Spotify',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                  child: Icon(
                                    MdiIcons.spotify,
                                    color: const Color.fromARGB(255, 30, 215, 96),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () async {
                      await launchURL(
                          'https://open.spotify.com/show/7CiWi6hZhGe9zM1tVYcXRX?si=b1c558d347754325');
                    },
                  ),
                ),
                // De Mente Abierta
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                  child: InkWell(
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
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/images/logo_DeMenteAbierta.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'De Mente Abierta',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 20,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 8, 0),
                                      child: AutoSizeText(
                                        'Spotify',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                  child: Icon(
                                    MdiIcons.spotify,
                                    color: const Color.fromARGB(255, 30, 215, 96),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () async {
                      await launchURL(
                          'https://open.spotify.com/show/7Hdf8sV2kkTcM1FnPtw6Xd?si=ed88027a3dc14200');
                    },
                  ),
                ),
                // Impulsando tu Talento
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                  child: InkWell(
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
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/images/logo_ImpulsaTuTalento.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Impulsando tu Talento',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 20,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 8, 0),
                                      child: AutoSizeText(
                                        'Spotify',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                  child: Icon(
                                    MdiIcons.spotify,
                                    color: const Color.fromARGB(255, 30, 215, 96),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () async {
                      await launchURL(
                          'https://open.spotify.com/show/2YWWVSzpRucjW4czFkAupc?si=cb6fa97664244546');
                    },
                  ),
                ),
                // Intervención Cultural
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                  child: InkWell(
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
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/images/logo_IntervencionCultura.png',
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Intervención Cultural',
                                      style: TextStyle(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF0F1113),
                                        fontSize: 20,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 4, 8, 0),
                                      child: AutoSizeText(
                                        'Spotify',
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontFamily: 'Plus Jakarta Sans',
                                          color: Color(0xFF57636C),
                                          fontSize: 14,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                  child: Icon(
                                    MdiIcons.spotify,
                                    color: const Color.fromARGB(255, 30, 215, 96),
                                    size: 50,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () async {
                      await launchURL(
                          'https://open.spotify.com/show/1hRAbLXjzNojV8vJfvrvkv?si=5ed0fb17beea41fa');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /* Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: MyColors.primaryBackground,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
              child: ListView.separated(
                padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return buildLibrary(index);
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: 5,
              ),
            ),
          ),
        ),
      ],
    ); */
  /* Widget buildLibrary(int index) {
    switch (index) {
      case 0:
        return Container(
          width: double.infinity,
          color: MyColors.white,
        );
      default:
        return Container();
    }
  } */
}
