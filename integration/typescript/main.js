
const fs = require('fs');
const process = require('process');

try {
    const input = fs.readFileSync('../input.json', 'utf8');

    // TypeScript is a special case, we cant actually use the generated types since the types only describe the JSON
    // payload so we only deserialize and serialize the JSON payload
    const news = JSON.parse(input);

    const output = JSON.stringify(news);

    fs.writeFileSync('../output.json', output);
} catch (err) {
    console.error(err);
    process.exit(1);
}
