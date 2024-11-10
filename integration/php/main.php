<?php

require_once __DIR__ . '/vendor/autoload.php';

require_once __DIR__ . '/Author.php';
require_once __DIR__ . '/Location.php';
require_once __DIR__ . '/Meta.php';
require_once __DIR__ . '/News.php';

$objectMapper = (new \PSX\Schema\ObjectMapper(new \PSX\Schema\SchemaManager()));
$data = json_decode(file_get_contents(__DIR__ . '/../input.json'));

try {
    $news = $objectMapper->read($data, \PSX\Schema\SchemaSource::fromClass(\Generator\News::class));

    file_put_contents(__DIR__ . '/../output.json', \json_encode($news));
} catch (\Throwable $e) {
    // the validation failed
    echo $e->getMessage();
    exit(1);
}
