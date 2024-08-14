package com.amundi.msg.routes;


import org.apache.camel.LoggingLevel;
import org.apache.camel.Processor;
import org.apache.camel.builder.RouteBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Component
public class CampagneRoute extends RouteBuilder {

    @Autowired
    PrepareSendProcessor prepareSendProcessor;

    @Override
    public void configure() throws Exception {
        from("activemq:queue:CAMPAGNE_MAIL?concurrentConsumers=10&transferExchange=false&destination.consumer.prefetchSize=1")
                /*.streamCaching()
                .routeId("TraiterCampagneRoute")
                .log(LoggingLevel.INFO, "message chopé par Camel")
                .throttle(constant(10))
                .timePeriodMillis(60000)*/
                .process(prepareSendProcessor)
                .log(LoggingLevel.ERROR, "message traité par Camel")
        ;
    }
}
