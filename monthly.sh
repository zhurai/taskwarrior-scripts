#!/bin/bash
for file in monthly/*.sh; do
    bash "${file}"
done

for file in monthly/*.py; do
    python3 "${file}"
done

