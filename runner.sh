erb config/config.yml.erb >config/config.yml
bundle exec bin/snowplow-emr-etl-runner --config config/config.yml --skip ${RUNNER_SKIP:-shred}
sleep 21600
