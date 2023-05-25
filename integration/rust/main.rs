use std::env;
use std::fs;
use serde_json::Result;

fn main() {
    let input = fs::read_to_string("../input.json").expect("Could not read input");

    let news: News = serde_json::from_str(input).unwrap();

    let output = serde_json::to_str(news);

    fs::write("../output.json", output).expect("Could not write output");
}
