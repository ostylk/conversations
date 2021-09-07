{ androidenv, ... }:

androidenv.composeAndroidPackages {
  toolsVersion = "26.1.1";
  platformToolsVersion = "31.0.2";
  buildToolsVersions = [ "30.0.2" ];
  platformVersions = [ "28" "29" "30" ];
  abiVersions = [ "armeabi-v7a" "arm64-v8a" ];
  cmakeVersions = [ "3.18.1" ];

  includeExtras = [ "extras;google;gcm" ];

  includeNDK = false;
  includeEmulator = false;
  includeSources = false;
  includeSystemImages = false;
  useGoogleAPIs = false;
  useGoogleTVAddOns = false;

  systemImageTypes = [ "google_apis_playstore" ];
}
