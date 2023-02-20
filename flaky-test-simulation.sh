#!/bin/bash

cp different-tests/passing/joken_config_test.exs test/ # passing test
mix test
cp different-tests/failing/joken_config_test.exs test/ # failing test
mv _build/test/lib/joken/test-junit-report.xml _build/test/lib/joken/test-junit-report-passed.xml
mix test