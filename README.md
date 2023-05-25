# TypeSchema Generator

## About

This repository contains the [TypeSchema](https://typeschema.org/) code generator provided as docker image.

## Usage

To get started you can simply use the `docker-compose up` command to start the generator. The generator reads the
`typeschema.json` file from the `output/` folder and writes the generated code into the output folder. Which language
is used depends on the `FORMAT` environment variable.

```
docker-compose up
```

## Integration

This repository contains also integration tests for every supported language. Please take a look at the `integration/`
folder to see examples how you can use the generated code.

## Configuration

The following shows some example environment variables for different programming languages, you can paste those settings
directly into the `.env` file.

#### CSharp

```
FORMAT="csharp"
NAMESPACE="Generator"
```

#### Go

```
FORMAT="go"
NAMESPACE="generator"
```

#### Java

```
FORMAT="java"
NAMESPACE="org.typeschema.generator"
```

#### PHP

```
FORMAT="php"
NAMESPACE="Generator"
```

#### Python

```
FORMAT="python"
NAMESPACE=""
```

#### Ruby

```
FORMAT="ruby"
NAMESPACE=""
```

#### Rust

```
FORMAT="rust"
NAMESPACE=""
```

#### TypeScript

```
FORMAT="typescript"
NAMESPACE=""
```


