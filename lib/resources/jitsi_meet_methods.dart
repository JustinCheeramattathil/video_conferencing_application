import 'package:jitsi_meet_v1/feature_flag/feature_flag.dart';
import 'package:jitsi_meet_v1/jitsi_meet.dart';
import 'package:zoom_clone/resources/auth_methods.dart';

class JitsiMeetMethods {
  final AuthMethods _authMethods = AuthMethods();
  void createMeeting(
      {required String roomName,
      required bool isAudioMuted,
      required bool isVideoMuted,
      String username = '',
      String? token}) async {
    try {
      FeatureFlag featureFlag = FeatureFlag();
      featureFlag.welcomePageEnabled = false;
      featureFlag.resolution = FeatureFlagVideoResolution.MD_RESOLUTION;
      String name; // Limit video resolution to 360p
      if (username.isEmpty) {
        name = _authMethods.user.displayName!;
      } else {
        name = username;
      }

      var options = JitsiMeetingOptions(room: roomName)
        ..serverURL = "https://someHost.com"
        ..userDisplayName = name
        ..token = token
        ..userEmail = _authMethods.user.email
        ..userAvatarURL = _authMethods.user.photoURL
        ..audioOnly = false // or .png
        ..audioMuted = true
        ..videoMuted = true;

      await JitsiMeet.joinMeeting(options, roomNameConstraints: Map());
    } catch (error) {
      print("error: $error");
    }
  }
}
