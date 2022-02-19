#!/usr/bin/env bash

setup() {
    load 'test_helper/bats-support/load'
    load 'test_helper/bats-assert/load'
    load 'test_helper/bats-files/load'
    DIR="$( cd "$( dirname "$BATS_TEST_FILENAME" )" >/dev/null 2>&1 && pwd )"
    PATH="$DIR/../src:$PATH"
    source print.sh
}


@test "test-hello-output" {
    run print-hello-world
    assert_output 'hello world'
}

@test "message output" {
    run print-msg "hello"
    assert_output "Msg: hello"
}
