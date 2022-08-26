#!/bin/bash
for file in daily/*.sh; do
    bash "${file}"
done

for file in daily/*.py]; do
    python3 "${file}"
done