import 'package:grpc/grpc.dart';

const backendUrl = "192.168.31.133";
const backendPort = 10500;
const authPort = 10501;

ClientChannel getChannel() {
  return ClientChannel(
    backendUrl,
    port: backendPort,
    options: ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );
}

ClientChannel getAuthChannel() {
  return ClientChannel(
    backendUrl,
    port: authPort,
    options: ChannelOptions(
      credentials: const ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );
}
