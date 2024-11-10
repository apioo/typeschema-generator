
extern crate serde;
extern crate serde_json;
extern crate chrono;

use std::fs;
use news::News;

mod author;
mod location;
mod meta;
mod news;

fn main() {
    let input = fs::read_to_string("../input.json").expect("Could not read input");

    let news: News = serde_json::from_str(&input).unwrap();

    let output = serde_json::to_string(&news).unwrap();

    fs::write("../output.json", output).expect("Could not write output");
}
