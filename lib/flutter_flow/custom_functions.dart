import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ff_commons/flutter_flow/lat_lng.dart';
import 'package:ff_commons/flutter_flow/place.dart';
import 'package:ff_commons/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

LatLng coordinates(
  double lat,
  double lng,
) {
  return LatLng(lat, lng);
}

String encodeAddress(String address) {
  return Uri.encodeComponent(address);
}

String makeMapsURL(
  double lat,
  double lng,
) {
  return 'https://www.google.com/maps/dir/?api=1&destination=$lat,$lng';
}

List<GasStationStruct> sortGasPricesByPrice(List<GasStationStruct> gasPrices) {
  gasPrices.sort((a, b) => a.price.compareTo(b.price));
  return gasPrices;
}
