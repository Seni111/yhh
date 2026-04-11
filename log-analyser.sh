#!/bin/bash
# log-analyser.sh — Day 3 build project
# Usage: ./log-analyser.sh <sample.log>

LOG=$1

if [ -z "$LOG" ]; then
  echo "Usage: $0 <logfile>"
  exit 1
fi

if [ ! -f "$LOG" ]; then
  echo "Error: file '$LOG' not found."
  exit 1
fi

echo "=== Log Summary: $LOG ==="
echo "Total lines : $(wc -l < "$LOG")"
echo "ERROR count : $(grep -c "ERROR" "$LOG")"
echo "WARN  count : $(grep -c "WARN"  "$LOG")"
echo "INFO  count : $(grep -c "INFO"  "$LOG")"
echo "DEBUG count : $(grep -c "DEBUG" "$LOG")"

echo ""
echo "=== Last 5 ERROR lines ==="
grep "ERROR" "$LOG" | tail -5

echo ""
echo "=== Saving clean log (DEBUG lines removed) ==="
CLEAN_LOG="clean.log"
sed '/DEBUG/d' "$LOG" > "$CLEAN_LOG"
echo "Saved to $CLEAN_LOG ($(wc -l < "$CLEAN_LOG") lines)"

echo ""
echo "=== ERROR timestamps ==="
grep "ERROR" "$LOG" | awk '{print $1, $2}'

echo ""
echo "=== Most frequent ERROR messages ==="
grep "ERROR" "$LOG" \
  | awk '{$1=$2=$3=""; print $0}' \
  | sed 's/^ *//' \
  | sort \
  | uniq -c \
  | sort -rn \
  | head -5
