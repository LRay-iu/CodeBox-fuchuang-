import 'dart:io';
import 'package:grpc/grpc.dart';
import 'package:xiao_tally/config/api.dart';
import 'package:xiao_tally/src/generated/xiao_grpc.pbgrpc.dart';

Future<Receipt> recognizeReceipt(String filePath) async {
  final channel = getChannel();
  final client = XiaoGRPCClient(channel);

  final img = File(filePath);

  final imgFile = ImgFile();
  imgFile.content = img.readAsBytesSync();

  try {
    final response = await client.recognizeReceipt(
      imgFile,
      options: CallOptions(compression: const GzipCodec()),
    );
    print('收到: ${response.receipt}');
    return response.receipt;
  } catch (e) {
    print('Caught error: $e');
    return Receipt();
  } finally {
    await channel.shutdown();
  }
}
