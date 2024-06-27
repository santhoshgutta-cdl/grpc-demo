import 'package:grpc/grpc.dart';
import 'package:logger/logger.dart';

class GrpcNetworkInterceptor extends ClientInterceptor {
  @override
  ResponseFuture<R> interceptUnary<Q, R>(
    ClientMethod<Q, R> method,
    Q request,
    CallOptions options,
    ClientUnaryInvoker<Q, R> invoker,
  ) {
    final responseFuture = invoker(method, request, options);
    responseFuture.then((response) => {}).catchError((e, s) {});

    return responseFuture;
  }

  @override
  ResponseStream<R> interceptStreaming<Q, R>(
    ClientMethod<Q, R> method,
    Stream<Q> request,
    CallOptions options,
    ClientStreamingInvoker<Q, R> invoker,
  ) {
    return invoker(method, request, options);
  }
}
