#!/bin/bash
set -e

SITE_URL="https://www.nasini.com.ar"
OUTPUT="wpscan-results.txt"

echo "[*] Escaneando $SITE_URL..."

wpscan --url $SITE_URL \
  --random-user-agent \
  --stealthy \
  --throttle 1.5 \
  --format cli \
  --api-token $WPSCAN_API_TOKEN \
  --output $OUTPUT

echo "[✓] Scan finalizado. Resultados en $OUTPUT"
