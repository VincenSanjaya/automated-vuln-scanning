#!/bin/bash

TARGET_HOST="127.0.0.1"
TARGET_URL="http://localhost:3000"
TARGET_URL_2="http://localhost:8080"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

NMAP_REPORT="reports/nmap-$TIMESTAMP.txt"
NUCLEI_REPORT="reports/nuclei-juiceshop-$TIMESTAMP.txt"
NUCLEI_DVWA_REPORT="reports/nuclei-dvwa-$TIMESTAMP.txt"

echo "Starting vulnerability scan..."
echo

echo "Target 1: $TARGET_URL"
echo "Target 2: $TARGET_URL_2"
echo

echo "[1/3] Running Nmap..."
nmap -sV -p 3000,8080 "$TARGET_HOST" -oN "$NMAP_REPORT"

echo
echo "[2/3] Running Nuclei against Juice Shop..."
nuclei -u "$TARGET_URL" \
  -severity info,low,medium,high,critical \
  -o "$NUCLEI_REPORT"

echo
echo "[3/3] Running Nuclei against DVWA..."
nuclei -u "$TARGET_URL_2" \
  -severity info,low,medium,high,critical \
  -o "$NUCLEI_DVWA_REPORT"

echo
echo "Scan completed."
echo "Nmap report: $NMAP_REPORT"
echo "Juice Shop Nuclei report: $NUCLEI_REPORT"
echo "DVWA Nuclei report: $NUCLEI_DVWA_REPORT"

SUMMARY_REPORT="reports/summary-$TIMESTAMP.txt"

{
  echo "Automated Vulnerability Scan Report"
  echo "Generated: $(date)"
  echo
  echo "Targets:"
  echo "- $TARGET_URL"
  echo "- $TARGET_URL_2"
  echo
  echo "===== NMAP RESULTS ====="
  cat "$NMAP_REPORT"
  echo
  echo "===== JUICE SHOP NUCLEI RESULTS ====="

  if [ -s "$NUCLEI_REPORT" ]; then
    cat "$NUCLEI_REPORT"
  else
    echo "No findings detected."
  fi

  echo
  echo "===== DVWA NUCLEI RESULTS ====="

  if [ -s "$NUCLEI_DVWA_REPORT" ]; then
    cat "$NUCLEI_DVWA_REPORT"
  else
    echo "No findings detected."
  fi

} > "$SUMMARY_REPORT"

echo
echo "Summary report: $SUMMARY_REPORT"