#!/bin/bash
for file in weekly/*.sh; do
    bash "${file}"
done
