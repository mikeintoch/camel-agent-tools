import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import org.apache.camel.BindToRegistry;
import org.apache.camel.Exchange;
import org.apache.camel.Processor;
import org.apache.camel.builder.RouteBuilder;

import dev.langchain4j.data.message.ChatMessage;
import dev.langchain4j.data.message.SystemMessage;
import dev.langchain4j.data.message.UserMessage;

public class Bindings extends RouteBuilder{

    @Override
    public void configure() throws Exception {
        // Routes are loading in yaml files.
    }


    @BindToRegistry(lazy=true)
    public static Processor createChatMessage(){

        return new Processor() {
            public void process(Exchange exchange) throws Exception{

                String payload = exchange.getMessage().getBody(String.class);
                List<ChatMessage> messages = new ArrayList<>();

                String systemMessage = """
                    You are an intelligent store assistant. Users will ask you questions about store product. 
                    Your task is to provide accurate and concise answers.

                    In the store have shirts, dresses, pants, shoes with no specific category

                    %s

                    If you are unable to access the tools to answer the user's query, 
                    Tell the user that the requested information is not available at this time and that they can try again later.
                        
                    """;

                String tools = """
                        You have access to a collection of tools
                        You can use multiple tools at the same time
                        Complete your answer using data obtained from the tools
                        """;

                messages.add(new SystemMessage(systemMessage.formatted(tools)));


                messages.add(new UserMessage(payload));

                exchange.getIn().setBody(messages);
            }
        };
    }
}