#!/bin/sh

# 상위 디렉토리로 이동
cd ../

# output 디렉토리 생성 (기존 디렉토리가 존재하면 삭제)
rm -rf output
mkdir output

# 레포지토리 경로 설정
REPO_DIR="./ko-chock-chock/web"

# 레포지토리의 내용이 있는지 확인
if [ -d "$REPO_DIR" ]; then
  echo "Copying files from $REPO_DIR to output directory..."
  cp -R "$REPO_DIR/"* ./output

  echo "Copying files back to $REPO_DIR..."
  cp -R ./output/* "$REPO_DIR/"
else
  echo "Error: Directory $REPO_DIR does not exist."
  exit 1
fi

# 결과 디버깅
echo "Output directory contents:"
ls -la ./output

echo "Repository directory ($REPO_DIR) contents:"
ls -la "$REPO_DIR"

echo "Build script completed successfully."
