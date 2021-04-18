import 'dart:io';

import 'package:exemplo_bloc/platform/platform.dart';
import 'package:flutter/material.dart';

void main() => Platform.isIOS ? runApp(IOSApp()) : runApp(AndroidApp());