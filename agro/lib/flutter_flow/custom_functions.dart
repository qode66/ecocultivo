import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';

int? newCustomFunction(CultivoRow? var1) {
  if (var1?.riego == 1) {
    return 5;
  }

  if (var1?.riego == 2) {
    return 4;
  }

  if (var1?.riego == 4) {
    return 2;
  }

  if (var1?.riego == 5) {
    return 1;
  }

  return null;
}
