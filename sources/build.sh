#!/bin/sh
set -e

echo ".
BUILD TASA EXPLORER
."

gftools builder TASAExplorer.yaml

echo ".
BUILD TASA ORBITER
."

gftools builder TASAOrbiter.yaml