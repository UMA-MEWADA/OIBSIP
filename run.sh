#!/bin/bash
echo "===================================="
echo " Online Reservation System - OIBSIP"
echo "===================================="
echo ""

if ! command -v javac &> /dev/null; then
    echo "ERROR: Java JDK not found!"
    echo "Install with: sudo apt install default-jdk   (Ubuntu/Debian)"
    echo "           or: brew install openjdk           (Mac)"
    exit 1
fi

echo "[1/3] Compiling Java files..."
cd "$(dirname "$0")/src"
javac reservation/*.java
if [ $? -ne 0 ]; then
    echo "ERROR: Compilation failed!"
    exit 1
fi
echo "Compilation successful!"

echo ""
echo "[2/3] Creating runnable JAR..."
cd "$(dirname "$0")"
jar cfm OnlineReservationSystem.jar MANIFEST.MF -C src .
echo "JAR created!"

echo ""
echo "[3/3] Launching application..."
java -jar OnlineReservationSystem.jar
