#!/bin/bash
for file in yearly/*.sh; do
    bash "${file}"
done

for file in yearly/*.py]; do
    python3 "${file}"
done