#!/bin/bash
for file in weekly/*.sh; do
    bash "${file}"
done

for file in weekly/*.py]; do
    python3 "${file}"
done