# TypeSchema Generator

## About

This repository contains the [TypeSchema](https://typeschema.org/) code generator provided as [docker image](https://hub.docker.com/repository/docker/fusio/typeschema-generator).

## Usage

To get started you can simply use the `docker-compose up` command to start the generator. The generator reads the
`typeschema.json` file from the `output/` folder and writes the generated code into the output folder. Which language
is used depends on the `FORMAT` environment variable.

```
docker-compose up
```

By default the generator uses the local schema file specified at the `SOURCE` env variable but it is also possible
to use a different source i.e. you can use an `https://` url which points to a remote schema or you can also directly
reference a schema at [TypeHub](https://typehub.cloud/) with i.e. `typehub://apioo:developer@1.0.1`

## Integration

This repository contains also integration tests for every supported language. Please take a look at the `integration/`
folder to see examples how you can use the generated code. Our GitHub [workflow action](.github/workflows/integration.yml)
uses the Docker-Image to generate the code in the target language and then builds a release in combination with a small
wrapper code which reads the [input.json](integration/input.json) transforms this JSON into an internal representation,
using the generated models and writes the result back to `integration/output.json`. Through this we test the complete
serialize/deserialize flow with the generated models.

## Configuration

The following shows some example environment variables for different programming languages, you can paste those settings
directly into the `.env` file.

#### CSharp

```
FORMAT="csharp"
CONFIG="namespace=Generator"
```

#### Go

```
FORMAT="go"
CONFIG="namespace=generator"
```

#### Java

```
FORMAT="java"
CONFIG="namespace=org.typeschema.generator"
```

#### PHP

```
FORMAT="php"
CONFIG="namespace=Generator"
```

#### Python

```
FORMAT="python"
CONFIG=""
```

#### Ruby

```
FORMAT="ruby"
CONFIG=""
```

#### Rust

```
FORMAT="rust"
CONFIG=""
```

#### TypeScript

```
FORMAT="typescript"
CONFIG=""
```

#### VisualBasic

```
FORMAT="visualbasic"
CONFIG=""
```



