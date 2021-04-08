#!/bin/bash

build_dir=$1
dest_dir=$2

# Copy debian files from mod_specific directory
cp ${build_dir}/packaging/debian/* ${dest_dir}/DEBIAN/

mkdir -p ${dest_dir}/etc/systemd/system
cp ${build_dir}/system/* ${dest_dir}/etc/systemd/system/
mkdir -p ${dest_dir}/opt/ros/foxy
cp setup_fog.sh ${dest_dir}/opt/ros/foxy/

