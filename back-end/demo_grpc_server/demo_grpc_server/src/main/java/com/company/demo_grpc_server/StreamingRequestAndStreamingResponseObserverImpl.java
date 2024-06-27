package com.company.demo_grpc_server;

import com.company.proto.model.commons.DemoApiRequestProto;
import com.company.proto.model.commons.DemoApiResponseDataProto;
import com.company.proto.model.commons.DemoApiResponseProto;
import com.company.proto.model.commons.ErrorProto;
import io.grpc.stub.StreamObserver;

public class StreamingRequestAndStreamingResponseObserverImpl implements StreamObserver<DemoApiRequestProto> {
    private final StreamObserver<DemoApiResponseProto> responseObserver;
    private int i;

    public StreamingRequestAndStreamingResponseObserverImpl(StreamObserver<DemoApiResponseProto> responseObserver) {
        this.responseObserver = responseObserver;
    }

    @Override
    public void onNext(DemoApiRequestProto demoApiRequestProto) {
        System.out.println("Processing request: " + demoApiRequestProto);
        //process a single request and send response bytes immediately
        responseObserver.onNext(
            DemoApiResponseProto.newBuilder()
                .setData(
                    DemoApiResponseDataProto.newBuilder()
                        .setStringValue("Hello World")
                        .setIntegerValue(10 * (i++))
                        .setDoubleValue(0.5 * (i++))
                        .setLongValue(67578586789567969L)
                        .build()
                )
                .build()
        );


    }

    @Override
    public void onError(Throwable throwable) {
        // error in receiving client request
        //do some error handling and send a valid error response to client
        responseObserver.onNext(
            DemoApiResponseProto.newBuilder()
                .addErrors(
                    ErrorProto.newBuilder()
                        .setCode("COM.COMPANY.001")
                        .setMessage("Unable to process request: " + throwable.getMessage())
                        .build()
                )
                .build()
        );
        responseObserver.onCompleted();
    }

    @Override
    public void onCompleted() {
        responseObserver.onCompleted();
    }
}
