
const fs = require('fs');
const process = require('process');

try {
    const input = fs.readFileSync('../input.json', 'utf8');

    const news = JSON.parse(input);

    const output = JSON.stringify(news);

    fs.writeFileSync('../output.json', output);
} catch (err) {
    console.error(err);
    process.exit(1);
}
