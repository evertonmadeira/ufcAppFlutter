// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'app/pages/signin_page.dart';

void main() => 
  runApp(MaterialApp(
      title: 'App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: SignInPage(),
  ));  