// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:io';

Future<dynamic> invokeAI(
  String? chat,
  String? image,
) async {
  try {
    final response = await http.post(
        Uri.parse("https://api.nevanhidayat.my.id/api/hackathon/chat"),
        body: json.encode({'chat': chat, 'image': image}),
        headers: {
          'Content-Type': 'application/json'
        }).timeout(Duration(seconds: 15));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return {
        'error': 'HTTP error: ${response.statusCode}',
        'body': response.body,
        'status': response.reasonPhrase,
      };
    }
  } on TimeoutException catch (e) {
    return {
      'error': 'TimeoutException: ${e.toString()}',
      'message': 'The request took too long to complete.',
      'details': e,
    };
  } on SocketException catch (e) {
    return {
      'error': 'SocketException: ${e.toString()}',
      'message': 'Check your internet connection.',
      'details': e,
    };
  } on HttpException catch (e) {
    return {
      'error': 'HttpException: ${e.toString()}',
      'message': 'There was an error with the HTTP request.',
      'details': e,
    };
  } on FormatException catch (e) {
    return {
      'error': 'FormatException: ${e.toString()}',
      'message': 'There was a format issue with the response.',
      'details': e,
    };
  } catch (e) {
    return {
      'error': 'Unexpected error: ${e.toString()}',
      'message': 'An unexpected error occurred.',
      'details': e,
    };
  }
}
