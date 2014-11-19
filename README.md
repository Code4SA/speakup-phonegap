speakup-phonegap
================

Speak Up Mzansi PhoneGap application that wraps the speakupmzansi.org.za mobile site.

The app is built using the [PhoneGap](http://phonegap.com) framework and is compiled for iOS, Android and Windows Phone using
[build.phonegap.com](http://build.phonegap.com).

You can download this app from https://build.phonegap.com/apps/1187057/share

Local Development
=================

To build on OS X, [install the PhoneGap CLI](http://docs.phonegap.com/en/3.5.0/guide_cli_index.md.html#The%20Command-Line%20Interface)
and [setup XCode to build apps](http://docs.phonegap.com/en/3.5.0/guide_platforms_ios_index.md.html#iOS%20Platform%20Guide).

Then checkout this repo and ensure the platform is installed:

    phonegap platform install ios

You can then build it locally and run it in XCode's emulator:

    phonegap build ios
    
Building on build.phonegap.com
==============================

Most builds are done using build.phonegap.com since it builds for all platforms.

1. Ensure you've pushed your code to github
2. Go to https://build.phonegap.com/apps/1187057/builds and click `update code` and then `pull latest` to pull the changes from GitHub.
3. You may need to unlock the build keys, see the Freedom House credentials file in Google Docs for the password.
4. Magic.
