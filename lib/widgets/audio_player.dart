// import 'package:audioplayers/audioplayers.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rxdart/rxdart.dart';

class AudioPlayerWidget extends StatefulWidget {
  final AudioPlayer audioPlayer;

  const AudioPlayerWidget({
    required this.audioPlayer,
    super.key,
    });  

  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  // late AudioPlayer _audioPlayer;
  bool _isPlaying = false;
  bool _isOffline = false;

  final _playlist = ConcatenatingAudioSource(
    children: [
      
      AudioSource.uri(
        Uri.parse(
          'https://tv.radiohosting.online:9002/stream',
        ),
        tag: MediaItem(
          id: '0',
          title: 'Transmisión en vivo',
          artist: 'Radio Xochicalco',
          artUri: Uri.parse(
            'http://www.radioxochicalco.com/images/radio/app/LogoRadioUX.png',
          ),
        ),
      ),
      // AudioSource.uri(
      //   Uri.parse('asset:///assets/audio/nature.mp3'),
      //   tag: MediaItem(
      //     id: '1',
      //     title: 'Nature Sounds',
      //     artist: 'Public Domain',
      //     artUri: Uri.parse(
      //       'http://www.radioxochicalco.com/images/radio/MARKETING_NOW.jpg',
      //     ),
      //   ),
      // ),
      // AudioSource.uri(
      //   Uri.parse(
      //     'https://c3.radioboss.fm:8161/stream',
      //   ),
      //   tag: MediaItem(
      //     id: '2',
      //     title: 'Radio Universitario',
      //     artist: 'UDEM',
      //     artUri: Uri.parse(
      //       'http://www.radioxochicalco.com/images/radio/RADIO_SNACK.jpg',
      //     ),
      //   ),
      // ),
      // AudioSource.uri(
      //   Uri.parse(
      //     'https://traffic.megaphone.fm/LI9282413157.mp3?updated=1666999832',
      //   ),
      //   tag: MediaItem(
      //     id: '3',
      //     title: '4 predictions for the future of the creator economy',
      //     artist: 'The Colin and Samr Show',
      //     artUri: Uri.parse(
      //       'http://www.radioxochicalco.com/images/radio/IMPULSANDO_TU_TALENTO.jpg',
      //     ),
      //   ),
      // ),
    ],
  );

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
        _audioPlayer.positionStream,
        _audioPlayer.bufferedPositionStream,
        _audioPlayer.durationStream,
        (position, bufferedPosition, duration) => PositionData(
          position,
          bufferedPosition,
          duration ?? Duration.zero,
        ),        
      );


  AudioPlayer get _audioPlayer => widget.audioPlayer;

  @override
  void initState() {
    super.initState();
    //_audioPlayer = AudioPlayer();
    _init();
    // _audioPlayer = AudioPlayer() //..setAsset('assets/audio/nature.mp3');
    //   ..setUrl(
    //       'https://open.spotify.com/episode/7bjgAzXrysZ4K3rCWpSfZN?si=ERcMFJqvTNeMOTvJv5LmwA');
  }

  Future<void> _init() async {
    // await _audioPlayer.setLoopMode(LoopMode.all);
    try {
      await _audioPlayer.setAudioSource(_playlist);
      // await _audioPlayer.play();      

      setState(() {
        // _isPlaying = true;
        _isOffline = false;
      });

    } catch (e) {
      setState(() {
        _isOffline = true;
        _isPlaying = false;
      });
      
      _showOfflineMessage();
    }
    
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topCenter,
        //     end: Alignment.bottomCenter,
        //     colors: [Color(0xFF144771), Color(0xFF071A2C)],
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [            
            StreamBuilder<SequenceState?>(
              stream: _audioPlayer.sequenceStateStream,
              builder: (context, snapshot) {
                final state = snapshot.data;
                if (state?.sequence.isEmpty ?? true) {
                  return const SizedBox();
                }
                final metadata = state!.currentSource!.tag as MediaItem;
                return MediaMetadata(
                  imageUrl: metadata.artUri.toString(),
                  artist: metadata.artist ?? '',
                  title: metadata.title,
                );
              },
            ),            
            StreamBuilder<PositionData>(
                stream: _positionDataStream,
                builder: (context, snapshot) {
                  // final positionData = snapshot.data;
                  return ProgressBar(
                    barHeight: 8,
                    baseBarColor: Colors.grey[600],
                    bufferedBarColor: Colors.grey,
                    progressBarColor: Colors.red,
                    timeLabelTextStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                    progress: _isPlaying ? const Duration(milliseconds: 9) : Duration.zero, //positionData?.position ?? Duration.zero,
                    buffered: const Duration(milliseconds: 9), //positionData?.bufferedPosition ?? Duration.zero,
                    total: const Duration(milliseconds: 9), //positionData?.duration ?? Duration.zero,
                    onSeek: (position) {} //_audioPlayer.seek,
                  );
                }),
            //Controls(audioPlayer: _audioPlayer, isOffline: _isOffline),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const IconButton(
                  onPressed: null, //audioPlayer.seekToPrevious,
                  iconSize: 50,
                  color: Colors.white,
                  icon: Icon(Icons.skip_previous_rounded),
                ),
                StreamBuilder<PlayerState>(
                  stream: _audioPlayer.playerStateStream,
                  builder: (context, snapshot) {
                    final playerState = snapshot.data;
                    final processingState = playerState?.processingState;
                    final playing = playerState?.playing;
                    if (!(playing ?? false)) {
                      _isPlaying = false;                                              
                      return IconButton(
                        onPressed: _audioPlayer.play,
                        iconSize: 70,
                        color: Colors.white,
                        icon: const Icon(Icons.play_arrow_rounded),
                      );
                    } else if (processingState != ProcessingState.completed) {
                      _isPlaying = true;
                      return IconButton(
                        onPressed: _audioPlayer.pause,
                        iconSize: 70,
                        color: Colors.white,
                        icon: const Icon(Icons.pause_rounded),
                      );
                    }
                    return const Icon(
                      Icons.play_arrow_rounded,
                      size: 70,
                      color: Colors.white,
                    );
                  },
                ),
                const IconButton(
                  onPressed: null, //audioPlayer.seekToNext,
                  iconSize: 50,
                  color: Colors.white,
                  icon: Icon(Icons.skip_next_rounded),
                ),
              ],
            ),
            if (_isOffline)
              const Text(
                'Transmisión fuera de línea',
                style: TextStyle(color: Colors.red, fontSize: 16),
              ),
          ],
        ),
      );
  }

  void _showOfflineMessage() {
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: const Text('Transmisión no disponible'),
        content: const Text('La transmision esta fuera de línea o no se pudo conectar.'),
        actions: [
          TextButton(
            onPressed: ()=> Navigator.of(context).pop(), 
            child: const Text('Cerrar'),
          ),
        ],
      ),
    );
  }
}

class Controls extends StatelessWidget {
  const Controls({
    super.key,
    required this.audioPlayer,
    required this.isOffline,
  });

  final AudioPlayer audioPlayer;
  final bool isOffline;
  //bool _isPlaying = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const IconButton(
          onPressed: null, //audioPlayer.seekToPrevious,
          iconSize: 60,
          color: Colors.white,
          icon: Icon(Icons.skip_previous_rounded),
        ),
        StreamBuilder<PlayerState>(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (!(playing ?? false)) {
              //_isPlaying = true;
              return IconButton(
                onPressed: audioPlayer.play,
                iconSize: 80,
                color: Colors.white,
                icon: const Icon(Icons.play_arrow_rounded),
              );
            } else if (processingState != ProcessingState.completed) {
              //_isPlaying = false;
              return IconButton(
                onPressed: audioPlayer.pause,
                iconSize: 80,
                color: Colors.white,
                icon: const Icon(Icons.pause_rounded),
              );
            }
            return const Icon(
              Icons.play_arrow_rounded,
              size: 80,
              color: Colors.white,
            );
          },
        ),
        const IconButton(
          onPressed: null, //audioPlayer.seekToNext,
          iconSize: 60,
          color: Colors.white,
          icon: Icon(Icons.skip_next_rounded),
        ),
      ],
    );    
  }
  
}


class PositionData {
  const PositionData(
    this.position,
    this.bufferedPosition,
    this.duration,
  );

  final Duration position;
  final Duration bufferedPosition;
  final Duration duration;
}

class MediaMetadata extends StatelessWidget {
  const MediaMetadata({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.artist,
  });

  final String imageUrl;
  final String title;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      DecoratedBox(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(2, 4),
              blurRadius: 4,
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            height: 280,
            width: 280,
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(height: 20),
      Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 8),
      Text(
        artist,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
