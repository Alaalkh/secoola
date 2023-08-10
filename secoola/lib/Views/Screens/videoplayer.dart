import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPopupDemo extends StatefulWidget {
  @override
  _VideoPopupDemoState createState() => _VideoPopupDemoState();
}

class _VideoPopupDemoState extends State<VideoPopupDemo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://www.example.com/sample.mp4', // Replace with your video URL
    )..initialize().then((_) {
      // Ensure the first frame is shown
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _showVideoPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SizedBox(
            width: _controller.value.size?.width ?? 200,
            height: _controller.value.size?.height ?? 200,
            child: VideoPlayer(_controller),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Popup Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showVideoPopup(context);
          },
          child: Text('Show Video Popup'),
        ),
      ),
    );
  }
}

