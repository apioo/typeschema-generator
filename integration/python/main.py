import json
from pathlib import Path

input = Path('../input.json').read_text()

news = json.loads(input, object_hook=News.from_json)

output = json.dumps(news, default=default)

Path('../output.json').write_text(output)

def default(obj):
    if hasattr(obj, 'to_json'):
        return obj.to_json()
    raise TypeError(f'Object of type {obj.__class__.__name__} is not JSON serializable')

