<?php

require 'deploy/recipe.php';

server('main', '207.154.214.52')
    ->path('/var/www/pumpic/www/pumpic.com')
    ->user('app', $_ENV['PASSWORD']);

set('repository', 'git@gitlab.dizboard.com:pumpic/cs-pumpic.git');
set('new_dirs', ['templates_c', 'cache']);

set('writeable_dirs', ['templates_c', 'cache', 'cron/log', 'logs']);
set('shared_dirs', ['public/security/wp-content', 'logs']);
set('shared_files', ['error.log', 'cron/log/api.log', 'cron/log/ga-cronjobs', 'cron/log/currencies-cronjobs', 'cron/log/exceptions.log']);
set('coronjobs_file', __DIR__ . '/deploy/cronjobs');

set('keep_releases', 5);
