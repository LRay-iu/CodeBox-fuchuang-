import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:xiao_tally/config/api.dart';
import 'package:xiao_tally/src/generated/xiao_auth.pbgrpc.dart';

Future<bool> register(BuildContext context, RegisterRequest user) async {
  final channel = getAuthChannel();
  final client = AuthServiceClient(channel);

  try {
    final response = await client.register(
      user,
      options: CallOptions(
        compression: const GzipCodec(),
        // metadata: metadata,
      ),
    );
    if (response.code == 200) {
      print('收到: ${response.code}');
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
