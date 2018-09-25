#!/bin/sh

#  BundleScript.sh
#  XIBSDK
#
#  Created by tsfa on 2018/9/21.
#  Copyright © 2018年 Marco. All rights reserved.
if [ "${ACTION}" = "build" ]
then
#要build的target名
target_Name='XIBSDKBundle'
echo "target_Name=${target_Name}"

#build之后的文件夹路径
build_DIR=${SRCROOT}/build
echo "build_DIR=${build_DIR}"

#真机build生成的bundle文件路径
DEVICE_DIR_A=${build_DIR}/Release-iphoneos/${target_Name}.bundle
echo "DEVICE_DIR_A=${DEVICE_DIR_A}"

#目标文件路径
INSTALL_DIR=${SRCROOT}/../Bundle/${target_Name}
echo "INSTALL_DIR=${INSTALL_DIR}"

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

#真机build
xcodebuild -target ${target_Name} -configuration Release -sdk iphoneos

#复制头文件到目标文件夹
cp -R "${DEVICE_DIR_A}" "${INSTALL_DIR}"

#删除build文件夹
rm -rf "${build_DIR}"

#打开目标文件夹
#open "${INSTALL_DIR}"


fi
