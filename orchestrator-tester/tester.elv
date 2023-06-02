#!/usr/bin/elvish

var config = (cat | from-json)

var output = [
    &config=$config
    &ohai="icanhazohai"
]

put $output | to-json
