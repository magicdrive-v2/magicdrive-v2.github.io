#!/bin/bash

# 输入和输出目录
inputDir="../static/video/samples"
outputDir="../static/video/covers"

# 创建输出目录（如果不存在）
mkdir -p "$outputDir"

# 遍历输入目录下的所有 mp4 文件
for f in "$inputDir"/*.mp4; do
    filename=$(basename "$f" .mp4)
    echo "Processing $f"
    ffmpeg -y -i "$f" -vf "select=eq(n\,0)" -q:v 3 -frames:v 1 "$outputDir/$filename.jpg"
done

echo "Done!"

# 输入和输出目录
inputDir="../static/video/edit"
outputDir="../static/video/covers"

# 创建输出目录（如果不存在）
mkdir -p "$outputDir"

# 遍历输入目录下的所有 mp4 文件
for f in "$inputDir"/*.mp4; do
    filename=$(basename "$f" .mp4)
    echo "Processing $f"
    ffmpeg -y -i "$f" -vf "select=eq(n\,0)" -q:v 3 -frames:v 1 "$outputDir/$filename.jpg"
done

echo "Done!"

# 输入和输出目录
inputDir="../static/video/clips"
outputDir="../static/video/covers"

# 创建输出目录（如果不存在）
mkdir -p "$outputDir"

# 遍历输入目录下的所有 mp4 文件
for f in "$inputDir"/*.mp4; do
    filename=$(basename "$f" .mp4)
    echo "Processing $f"
    ffmpeg -y -i "$f" -vf "select=eq(n\,0)" -q:v 3 -frames:v 1 "$outputDir/$filename.jpg"
done

echo "Done!"