#!/bin/bash


SCRIPT_HOME="`dirname ${BASH_SOURCE[0]}`"
BUILD_HOME="${SCRIPT_HOME}/build"
SOURCE_BOOT_DISK="${SCRIPT_HOME}/src/freedos.boot.disk.1.4MB.img"
TARGET_BOOT_DISK="${BUILD_HOME}/floppy.img"
RAR_FILE="${BUILD_HOME}/secrets.rar"
BOOT_DISK_VOLUME_DIRECTORY=/Volumes/FREEDOS/

mkdir -p "${BUILD_HOME}"

#if [ -z "`which rar`" ]; then
#	echo "Can't find 'rar', please install it, then try again."
#	exit 1
#fi

if [ -f "${TARGET_BOOT_DISK}" ]; then
	rm "${TARGET_BOOT_DISK}"
fi

if [ -f "${RAR_FILE}" ]; then
	rm "${RAR_FILE}"
fi


cp "${SOURCE_BOOT_DISK}" "${TARGET_BOOT_DISK}"

hdiutil attach "${TARGET_BOOT_DISK}"

cp -r "${SCRIPT_HOME}/src/root/" "${BOOT_DISK_VOLUME_DIRECTORY}"
#rar a -r -ep "${RAR_FILE}" "${SCRIPT_HOME}/src/secrets/"
#cp "${RAR_FILE}" "${BOOT_DISK_VOLUME_DIRECTORY}"

hdiutil eject "${BOOT_DISK_VOLUME_DIRECTORY}"

cp -r "${SCRIPT_HOME}/src/demo/" "${BUILD_HOME}/"
