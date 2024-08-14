package com.amundi.msg.routes;

import org.apache.camel.Exchange;
import org.springframework.stereotype.Component;

@Component
public class PrepareSendProcessor implements org.apache.camel.Processor {
    @Override
    public void process(Exchange exchange) throws Exception {

        Thread.sleep(1000 * 60);

    }
}
