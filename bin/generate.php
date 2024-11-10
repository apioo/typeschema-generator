<?php

$loader = __DIR__ . '/../vendor/autoload.php';

$schemaManager = new \PSX\Schema\SchemaManager();

$application = new Symfony\Component\Console\Application('PSX Schema');
$application->add(new \PSX\Schema\Console\ParseCommand($schemaManager));
$application->run();
