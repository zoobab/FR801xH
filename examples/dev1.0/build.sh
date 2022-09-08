#!/bin/bash
set -eo pipefail
# only some examples compile...
for i in ble_simple_central ble_multi_role; do
        echo "===== Building $i... ====="
        cd $i/gcc
        make clean
        make
        cd ../..
        echo "===== Built $i ! ======"
done
