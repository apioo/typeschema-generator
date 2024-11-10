import json
from pathlib import Path

input = Path('../input.json').read_text()

news = News.model_validate_json(input)

output = json.dumps(news)

Path('../output.json').write_text(output)
