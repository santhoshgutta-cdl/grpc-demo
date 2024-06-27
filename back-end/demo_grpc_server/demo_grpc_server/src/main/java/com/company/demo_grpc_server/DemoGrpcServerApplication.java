package com.company.demo_grpc_server;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(
    scanBasePackages = {"com.company.demo_grpc_server"}
)
public class DemoGrpcServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoGrpcServerApplication.class, args);
    }
}
