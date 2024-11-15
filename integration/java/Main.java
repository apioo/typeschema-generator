package org.typeschema.generator;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.nio.file.Files;
import java.nio.file.Path;
import java.io.IOException;

public class Main {
    public static void main(String[] args) throws IOException {
        String input = Files.readString(Path.of("../input.json"));

        ObjectMapper objectMapper = (new ObjectMapper())
            .findAndRegisterModules()
            .configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);

        News data = objectMapper.readValue(input, News.class);

        String output = objectMapper.writeValueAsString(data);

        Files.write(Path.of("../output.json"), output.getBytes());
    }
}
