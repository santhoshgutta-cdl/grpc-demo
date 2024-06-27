package com.company.demo_grpc_server;

import com.company.proto.model.commons.DemoApiRequestProto;
import com.company.proto.model.commons.DemoApiResponseDataProto;
import com.company.proto.model.commons.DemoApiResponseProto;
import com.company.proto.model.commons.ErrorProto;
import io.grpc.stub.StreamObserver;

public class StreamingRequestObserverAndUnaryResponseImpl implements StreamObserver<DemoApiRequestProto> {
    final StreamObserver<DemoApiResponseProto> responseObserver;

    public StreamingRequestObserverAndUnaryResponseImpl(StreamObserver<DemoApiResponseProto> responseObserver) {
        this.responseObserver = responseObserver;
    }

    @Override
    public void onNext(DemoApiRequestProto demoApiRequestProto) {
        System.out.println("Processing request: " + demoApiRequestProto);
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
        //request streaming completed
        //do final processing in here
        //and send one response back to client
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
}
