package com.company.demo_grpc_server;

import com.company.proto.model.commons.DemoApiRequestProto;
import com.company.proto.model.commons.DemoApiResponseDataProto;
import com.company.proto.model.commons.DemoApiResponseProto;
import com.company.proto.model.commons.DemoGrpcApiServiceGrpc;
import io.grpc.stub.StreamObserver;
import net.devh.boot.grpc.server.service.GrpcService;

@GrpcService
public class HelloGrpcApiServiceImpl extends DemoGrpcApiServiceGrpc.DemoGrpcApiServiceImplBase {
    @Override
    public void unaryRequestAndResponse(DemoApiRequestProto request, StreamObserver<DemoApiResponseProto> responseObserver) {
        responseObserver.onNext(
            DemoApiResponseProto.newBuilder()
                .setData(
                    DemoApiResponseDataProto.newBuilder()
                        .setStringValue("Hello World")
                        .setIntegerValue(10)
                        .setDoubleValue(0.5)
                        .setLongValue(67578586789567969L)
                        .build()
                )
                .build()
        );
        responseObserver.onCompleted();
    }

    @Override
    public StreamObserver<DemoApiRequestProto> streamingRequestAndUnaryResponse(StreamObserver<DemoApiResponseProto> responseObserver) {
        return new StreamingRequestObserverAndUnaryResponseImpl(responseObserver);
    }

    @Override
    public void unaryRequestAndStreamingResponse(DemoApiRequestProto request, StreamObserver<DemoApiResponseProto> responseObserver) {
        //process a single request and send multiple response bytes
        for (int i = 0; i < 5; i++) {
            responseObserver.onNext(
                DemoApiResponseProto.newBuilder()
                    .setData(
                        DemoApiResponseDataProto.newBuilder()
                            .setStringValue("Hello World")
                            .setIntegerValue(10 * i)
                            .setDoubleValue(0.5 * i)
                            .setLongValue(67578586789567969L)
                            .build()
                    )
                    .build()
            );
            try {
                Thread.sleep(2 * 1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        responseObserver.onCompleted();
    }

    @Override
    public StreamObserver<DemoApiRequestProto> streamingRequestAndResponse(StreamObserver<DemoApiResponseProto> responseObserver) {
        return new StreamingRequestAndStreamingResponseObserverImpl(responseObserver);
    }
}
