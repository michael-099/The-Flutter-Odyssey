import "package:flutter/material.dart";
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import "package:permission_handler/permission_handler.dart";
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import "package:agora_rtc_engine/rtc_remote_view.dart" as RtcRemoteView;

const AppID = "505a9ec196214b0db10c12bd06a7c237";
const Token =
    "007eJxTYJD7G1O9WIctrFyC9/IFgXfWT50+PqySmmf1VTK4xKboYrACg7FJooGBRVKamUmymUlSSpqlualxorFRmoU5ECSmJs3pS01tCGRkOBbOzMrIAIEgPitDTmpiUR4DAwALfR6F";

class VideoChat extends StatefulWidget {
  State createState() => VideoChatState();
}

class VideoChatState extends State<VideoChat> {
  int _remoteUid = 0;
  RtcEngine? _engine;
  @override
  void initState() {
    super.initState();
    initForAgora();
  }

  Future<void> initForAgora() async {
    await [Permission.microphone, Permission.camera].request();
    _engine = await RtcEngine.createWithConfig(RtcEngineConfig(AppID));
    await _engine.enableVideo();
    _engine.setEventHandler(RtcEngineEventHandler(
        onJoinChannelSuccess: (String channel, int uid, int elapsed) {},
        onUserJoined: (int uid, int elapsed) {},
        userOffLine: (int uid, UserOffLineReason reason) {}));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("v chat")),
      body: Stack(
        children: [
          Center(
            child: _renderRemoteVideo(),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: 100,
                  height: 100,
                  child: Center(
                    child: _renderLocalPreview(),
                  )))
        ],
      ),
    );
  }
}

Widget _renderLocalPreview() {
  return Container();
}

Widget _renderRemotePreview() {
  if (_remoteUid != null) {
    return Container();
  } else {
    return Text(
      "please wait for the remote",
      textAlign: TextAlign.center,
    );
  }
}
