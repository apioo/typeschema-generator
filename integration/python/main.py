import json
from pathlib import Path
from gen.news import News


def main():
  input = Path('../input.json').read_text()

  news = News.model_validate_json(input)

  output = news.model_dump_json()

  Path('../output.json').write_text(output)


if __name__ == '__main__':
  main()

