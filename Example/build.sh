:<<!
**********************************************************
* Author        : Scyano
* Email         : scyano@icloud.com
* *******************************************************
!

:<<!
**********************************************************
# $ ./build.sh <framework_name> <config>
# e.g
# ./build.sh Framework Debug
* *******************************************************
!

# Skip pod update, uncomment below line if need to update pod.
# pod update

# Target name of framework.
FMK_NAME=$1

# Build configuration of scheme, such as Debug, Release, AdHoc, InHouse.
CONFIG=$2
if [ -z "${CONFIG}" ]
then
CONFIG=Debug
fi

WORKSPACE_NAME=${FMK_NAME}
SCHEME_NAME=${FMK_NAME}

# Install dir will be the final output to the framework.
# The following line create it in the root folder of the current project.
DES_DIR=../${FMK_NAME}/Frameworks/${FMK_NAME}.framework

# Working dir will be deleted after the framework creation.
BUILD_DIR=Build
# Framework path in Build directory.
DEVICE_DIR=${BUILD_DIR}/${CONFIG}-iphoneos/${FMK_NAME}/${FMK_NAME}.framework
SIMULATOR_DIR=${BUILD_DIR}/${CONFIG}-iphonesimulator/${FMK_NAME}/${FMK_NAME}.framework

# Workspace architechture. Add 'clean build' if you need to build a purely framework.
xcodebuild -workspace ${WORKSPACE_NAME}".xcworkspace" -configuration "${CONFIG}" -scheme ${SCHEME_NAME} SYMROOT=$(PWD)/build -sdk iphoneos clean build
xcodebuild -workspace ${WORKSPACE_NAME}".xcworkspace" -configuration "${CONFIG}" -scheme ${SCHEME_NAME} SYMROOT=$(PWD)/build -sdk iphonesimulator clean build
# xcodebuild -configuration "${CONFIG}" -target "${FMK_NAME}" -sdk iphoneos clean build
# xcodebuild -configuration "${CONFIG}" -target "${FMK_NAME}" -sdk iphonesimulator clean build

# Clean old buildings.
if [ -d "${DES_DIR}" ]
then
rm -rf "${DES_DIR}"
fi
mkdir -p "${DES_DIR}"
cp -R "${DEVICE_DIR}/" "${DES_DIR}/"
cp -R "${SIMULATOR_DIR}/Modules/${FMK_NAME}.swiftmodule/." "${DES_DIR}/Modules/${FMK_NAME}.swiftmodule/"

# Uses the Lipo Tool to merge both binary files (i386 + armv6/armv7 + arm64) into one Universal final product folder.
# input and output must match format 'name.framework/name'.
lipo -create "${DEVICE_DIR}/${FMK_NAME}" "${SIMULATOR_DIR}/${FMK_NAME}" -output "${DES_DIR}/${FMK_NAME}"
rm -r "${BUILD_DIR}"

