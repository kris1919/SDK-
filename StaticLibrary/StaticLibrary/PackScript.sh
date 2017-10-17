#!/bin/sh

#  PackScript.sh
#  StaticLibrary
#
#  Created by krisyuhao on 2017/9/30.
#  Copyright © 2017年 krisyuhao. All rights reserved.

if [ "${ACTION}" = "build" ]
then
#要build的target名
target_Name=${PROJECT_NAME}
echo "target_Name=${target_Name}"

#build之后的文件夹路径
build_DIR=${SRCROOT}/build
echo "build_DIR=${build_DIR}"

#真机build生成的头文件的文件夹路径
DEVICE_DIR_INCLUDE=${build_DIR}/Release-iphoneos/include/${PROJECT_NAME}
echo "DEVICE_DIR_INCLUDE=${DEVICE_DIR_INCLUDE}"

#真机build生成的.a文件路径
DEVICE_DIR_A=${build_DIR}/Release-iphoneos/lib${PROJECT_NAME}.a
echo "DEVICE_DIR_A=${DEVICE_DIR_A}"

#模拟器build生成的.a文件路径
SIMULATOR_DIR_A=${build_DIR}/Release-iphonesimulator/lib${PROJECT_NAME}.a
echo "SIMULATOR_DIR_A=${SIMULATOR_DIR_A}"

#目标文件夹路径
INSTALL_DIR=${SRCROOT}/../Products/${PROJECT_NAME}
echo "INSTALL_DIR=${INSTALL_DIR}"

#目标头文件文件夹路径
INSTALL_DIR_Headers=${INSTALL_DIR}/Headers
echo "INSTALL_DIR_Headers=${INSTALL_DIR_Headers}"

#目标.a路径
INSTALL_DIR_A=${INSTALL_DIR}/lib${PROJECT_NAME}.a
echo "INSTALL_DIR_A=${INSTALL_DIR_A}"

#判断build文件夹是否存在，存在则删除
if [ -d "${build_DIR}" ]
then
rm -rf "${build_DIR}"
fi

#判断目标文件夹是否存在，存在则删除该文件夹
if [ -d "${INSTALL_DIR}" ]
then
rm -rf "${INSTALL_DIR}"
fi
#创建目标文件夹
mkdir -p "${INSTALL_DIR}"

#build之前clean一下
xcodebuild -target ${target_Name} clean

#模拟器build
xcodebuild -target ${target_Name} -configuration Release -sdk iphonesimulator

#真机build
xcodebuild -target ${target_Name} -configuration Release -sdk iphoneos

#复制头文件到目标文件夹
cp -R "${DEVICE_DIR_INCLUDE}" "${INSTALL_DIR_Headers}"

#合成模拟器和真机.a包
lipo -create "${DEVICE_DIR_A}" "${SIMULATOR_DIR_A}" -output "${INSTALL_DIR_A}"

#删除build文件夹
rm -rf "${build_DIR}"

#打开目标文件夹
#open "${INSTALL_DIR}"


fi
