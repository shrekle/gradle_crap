import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gradle_crap/theme/pallete.dart';
import 'features/auth/screens/login_screen.dart';
import 'firebase_options.dart';

//check if you are logged in to firebase with the command
//firebase login
//you run this in the project terminal
//(the last part of the command is project specific)
// flutterfire configure --project=reddit-flutter-11aa2;
// when you set up the project in firebase,
//this command is given to you that has the correct project,
//select all platforms(google sign in does not work on
// macos so unselect it if you are using it)
//after you set up the info p list file crap, cd ios then pod install
//you dont need to set up android, unless you are using google sign in
// in that case you need to pass the SHA1 key
//return to project folder in terminal and run the keytool command found in link below
//https://stackoverflow.com/questions/51845559/generate-sha-1-for-flutter-react-native-android-native-app
//keytool -list -v -keystore ~/.android/debug.keystore -alias androiddebugkey -storepass android -keypass android
//firebase project settings in the android thing add finger print, paste the SHA1 key then download the google-service file
//go to android/app/build.gradle in flutter project
// drag the file and replace
// go to the build gradle and update the minSdkVersion to 19
//defaultConfig {
// minSdkVersion 19
// multiDexEnabled true(add this one)
//change the compileSdkVersion to 33
// android {
//     namespace "com.example.reddit_tutorial"
//     compileSdkVersion 33
//     ndkVersion flutter.ndkVersion

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Reddit Tutorial',
      theme: Pallete.darkModeAppTheme,
      home: const LoginScreen(),
    );
  }
}
