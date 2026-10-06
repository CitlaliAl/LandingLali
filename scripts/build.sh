#!/usr/bin/env bash
set -euo pipefail

QUARTO_VERSION="1.10.18"
QUARTO_SHA256="afad071b5bd22c02f2d300695743189d3650e0537a53073e654b630cff2b0c73"
QUARTO_ARCHIVE="$(mktemp)"
trap 'rm -f "$QUARTO_ARCHIVE"' EXIT

curl --fail --location --retry 3 \
  "https://github.com/quarto-dev/quarto-cli/releases/download/v${QUARTO_VERSION}/quarto-${QUARTO_VERSION}-linux-amd64.tar.gz" \
  --output "$QUARTO_ARCHIVE"

echo "${QUARTO_SHA256}  ${QUARTO_ARCHIVE}" | sha256sum --check --status
mkdir -p .quarto-ci
tar -xzf "$QUARTO_ARCHIVE" --directory .quarto-ci --strip-components=1
./.quarto-ci/bin/quarto render
