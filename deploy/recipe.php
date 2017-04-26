<?php

require 'vendor/boomers/deployer-recipes/src/default.php';

task('deploy:create_dirs', function () {
    $releasePath = env()->getReleasePath();

    cd($releasePath);
    
    $newDirs = (array) get('new_dirs', []);

    foreach ($newDirs as $dir) {
        // Create new dir
        run("mkdir -p $dir");
    }
})->desc('Creating directories');

/**
 * Main task
 */
task('deploy', [
    'deploy:start',
    'deploy:prepare',
    'deploy:update_code',
    'deploy:create_dirs',
    'deploy:shared',
    'deploy:writeable_dirs',
    'deploy:vendors',
    'deploy:cronjobs',	
    'deploy:symlink',
    'cleanup',
    'deploy:end'
])->desc('Deploy your project');

/**
 * Success message
 */
after('deploy', function () {
    $host = config()->getHost();
    writeln("<info>Successfully deployed on</info> <fg=cyan>$host</fg=cyan>");
});
