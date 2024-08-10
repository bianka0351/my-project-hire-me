import 'package:flutter/material.dart';

class AppConfig {

  //configure this
  static const bool HTTPS = true;

  //configure this
  static const DOMAIN_PATH = "c7f1-149-34-244-130.ngrok-free.app"; // directly inside the public folder

  //do not configure these below
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/";
}
