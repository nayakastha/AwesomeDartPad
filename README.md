# Flutter Workshop - GDSC NIT ROURKELA - Preptember 2021

## What we built during the workshop? 

For checking out the [code](https://github.com/nayakastha/flutter-workshop-preptember/blob/main/codes/counter.dart)
![sample app](https://github.com/nayakastha/flutter-workshop-preptember/blob/main/images/counter.png)

For checking out the [code](https://github.com/nayakastha/flutter-workshop-preptember/blob/main/codes/solar.dart)
![solar system](https://github.com/nayakastha/flutter-workshop-preptember/blob/main/images/solar.png)

For checking out the [code](https://github.com/nayakastha/flutter-workshop-preptember/blob/main/codes/paint.dart)
![draw it out](https://github.com/nayakastha/flutter-workshop-preptember/blob/main/images/paint.png)



## What is Flutter? 
Flutter is Google's SDK for crafting beautiful, fast user experiences for mobile, web, and desktop from a single codebase. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.

## How to get started? `Installation Guide`
### 1. Download SDK

[Download](https://flutter.dev/docs/get-started/install) Flutter SDK, extract the "Flutter" folder and put somewhere on your machine

### 2. Update your path

- From the Start search bar, enter `env` and select Edit environment variables for your account.
- Under User variables check if there is an entry called Path:
       
     If the entry exists, append the full path to `flutter\bin` using ; as a separator from existing values. 
       
     If the entry doesn’t exist, create a new user variable named Path with the full path to `flutter\bin` as its value.

### 3. Check dependencies
```
flutter doctor
```
This command checks your environment and displays a report of the status of your Flutter installation. Check the output carefully for other software you might need to install or further tasks to perform.

`Note - Here is the procedure for Windows. `

### 4. Install Android Studio

- [Download](https://developer.android.com/studio) and install Android Studio.
- Start Android Studio, and go through the ‘Android Studio Setup Wizard’. This installs the latest Android SDK, Android SDK Command-line Tools, and Android SDK Build-Tools, which   are required by Flutter when developing for Android.
- Run flutter doctor to confirm that Flutter has located your installation of Android Studio. If Flutter cannot locate it, run `flutter config --android-studio-dir <directory>` to     set the directory that Android Studio is installed to.

### 5. Set up Android Device

`To prepare to run and test your Flutter app on an Android device, you need an Android device running Android 4.1 (API level 16) or higher.`

- Enable Developer options and USB debugging on your device. Detailed instructions are available in the Android documentation.
- Windows-only: Install the Google USB Driver.
- Using a USB cable, plug your phone into your computer. If prompted on your device, authorize your computer to access your device.
- In the terminal, run the flutter devices command to verify that Flutter recognizes your connected Android device. By default, Flutter uses the version of the Android SDK where your adb tool is based. If you want Flutter to use a different installation of the Android SDK, you must set the `ANDROID_SDK_ROOT` environment variable to that installation directory.


### 6. Create flutter app

- Open the Android Studio  and select Create New Flutter Project.
- Select Flutter Application as the project type. Then click Next.
- Verify the Flutter SDK path specifies the SDK’s location (select Install SDK… if the text field is blank).
- Enter a project name (for example, myapp). Then click Next.
- Click Finish.
Wait for Android Studio to install the SDK and create the project.

OR

```
flutter create myapp
cd myapp
flutter devices
flutter run
```

## You have successfuly installed and setup Flutter. 
You’ll mostly edit `lib/main.dart`, where the Dart code lives.

If you want to learn how to build your own app. Head on to this [Google Codelab](https://codelabs.developers.google.com/codelabs/first-flutter-app-pt1#0) and try it out yourself!

### 🎉Happy Fluttering


