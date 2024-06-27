import 'package:grpc/grpc.dart';
import 'package:grpc_demo_app/network/grpc/generated/demo_api_service.pbgrpc.dart';
import 'package:grpc_demo_app/network/grpc/grpc_network_interceptor.dart';

class GrpcNetworkClientProvider {
  static ClientChannel? grpcManagedChannel;
  static GrpcNetworkClientProvider instance = GrpcNetworkClientProvider._();
  late DemoGrpcApiServiceClient _client;

  GrpcNetworkClientProvider._();

  static Future<void> init() async {
    grpcManagedChannel?.shutdown();
    grpcManagedChannel = ClientChannel(
      'localhost',
      port: 9090,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    instance._client = DemoGrpcApiServiceClient(
      grpcManagedChannel!,
      interceptors: [
        GrpcNetworkInterceptor(),
      ],
    );
  }

  DemoGrpcApiServiceClient get client => _client;
}
