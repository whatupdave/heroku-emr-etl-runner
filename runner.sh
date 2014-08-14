erb config/config.yml.erb >config/config.yml

while :
do
  bundle exec bin/snowplow-emr-etl-runner --enrichments config/enrichments --config config/config.yml --skip ${RUNNER_SKIP:-shred}
  sleep ${SLEEP:-86400}
done