#!/usr/bin/env bash

echo "Starting low-latency driver"
java -cp samples.jar io.aeron.samples.LowLatencyMediaDriver &

echo "Starting ping"
java -cp samples.jar -XX:+UnlockDiagnosticVMOptions -XX:GuaranteedSafepointInterval=300000 \
    -Dagrona.disable.bounds.checks=true -Daeron.sample.ping.streamId=10 \
    -Daeron.sample.pong.streamId=11 \
    -Daeron.sample.ping.channel=aeron:udp?endpoint=aeron_pong:40123 \
    -Daeron.sample.pong.channel=aeron:udp?endpoint=localhost:40124 io.aeron.samples.Ping
