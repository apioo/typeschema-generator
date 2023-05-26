import json
from pathlib import Path

input = Path('../input.json').read_text()

# @TODO currently we dont use the @dataclass classes since we have not found an
# easy way to serialize or deserialize those natively please let us know if you
# have some ideas

news = json.loads(input)

output = json.dumps(news)

Path('../output.json').write_text(output)
