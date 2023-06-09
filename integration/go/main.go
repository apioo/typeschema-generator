package main;

import "os"
import "encoding/json"

func main() {
    input, errRead := os.ReadFile("../input.json")
    if errRead != nil {
        panic(errRead)
    }

    var news News
    errUnmarshal := json.Unmarshal(input, &news)
    if errUnmarshal != nil {
        panic(errUnmarshal)
    }

    output, errMarshal := json.Marshal(news)
    if errMarshal != nil {
        panic(errMarshal)
    }

    errWrite := os.WriteFile("../output.json", output, 0644)
    if errWrite != nil {
        panic(errWrite)
    }
}
