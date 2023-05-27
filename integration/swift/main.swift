
do {
    let inputPath = try Bundle.main.path(forResource: "../input", ofType: "json")
    let inputUrl = URL(fileURLWithPath: inputPath)
    let input = try Data(contentsOf: inputUrl)

    let news = try JSONDecoder().decode(News.self, from: input)

    let output = try JSONEncoder().encode(news)

    let outputPath = try Bundle.main.path(forResource: "../output", ofType: "json")
    let outputUrl = URL(fileURLWithPath: outputPath)
    try output.write(to: outputUrl, atomically: true, encoding: .utf8)
} catch {
    print("Error: \(error)")
}
