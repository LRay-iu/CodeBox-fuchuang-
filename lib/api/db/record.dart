import 'package:xiao_tally/config/api.dart';
import 'package:xiao_tally/src/generated/google/protobuf/timestamp.pb.dart';
import 'package:xiao_tally/src/generated/xiao_grpc.pbgrpc.dart';
import 'package:grpc/grpc.dart';

Future<void> tryGrpc() async {
  final record = Record();
  record.amount = 100.25;
  record.categoryId = 'abc-123';
  record.accountId = 'rfg-456';
  record.timestamp = Timestamp.fromDateTime(DateTime.now());
  record.note = 'KFC疯狂星期四';

  final result = await addRecord(record);
  print('添加记录: $result');
}

Future<bool> addRecord(Record record) async {
  final channel = getChannel();
  final client = XiaoGRPCClient(channel);

  try {
    final response = await client.addRecord(
      record,
      options: CallOptions(compression: const GzipCodec()),
    );
    print('收到: ${response.msg}');
    return true;
  } catch (e) {
    print('Caught error: $e');
    return false;
  } finally {
    await channel.shutdown();
  }
}
