#!/bin/sh
set -e

cmd="$@"
retries=${WAIT_FOR_RETRIES:-15}
wait_seconds=${WAIT_FOR_WAIT_SECONDS:-5}

for i in $(seq $retries); do
  echo "Attempting to run: $cmd"
  if sh -c "$cmd"; then
    echo "Success!"
    exit 0
  fi

  echo "Failed. Retrying in $wait_seconds seconds..."
  sleep "$wait_seconds"
done

echo "Retry limit exceeded."
exit 1