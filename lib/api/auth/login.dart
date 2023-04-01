import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xiao_tally/config/api.dart';
import 'package:xiao_tally/src/generated/xiao_auth.pbgrpc.dart';

Future<bool> login(BuildContext context, LoginRequest user) async {
  final channel = getAuthChannel();
  final client = AuthServiceClient(channel);

  // 获得 shared preferences 实例
  final prefs = await SharedPreferences.getInstance();

  try {
    final response = await client.getToken(
      user,
      options: CallOptions(
        compression: const GzipCodec(),
        // metadata: metadata,
      ),
    );
    if (response.code == 200) {
      print('收到: ${response.accessToken}');
      prefs.setString("token", response.accessToken);
      return true;
    }
    return false;
  } catch (e) {
    print('Caught error: $e');
    return false;
  } finally {
    await channel.shutdown();
  }
}
