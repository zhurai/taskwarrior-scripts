#!/bin/bash
for file in daily/*.sh; do
    bash "${file}"
done
