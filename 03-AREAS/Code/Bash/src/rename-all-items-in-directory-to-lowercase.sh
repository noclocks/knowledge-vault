#!/usr/bin/env bash

for name in *; do mv "$name" "${name,,}"; done
