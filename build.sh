#!/bin/sh

# 현재 작업 디렉토리를 명시적으로 설정
WORK_DIR="$(pwd)"
WEB_DIR="$WORK_DIR/web"
OUTPUT_DIR="$WORK_DIR/output"

# output 디렉토리 초기화 및 생성
echo "Cleaning and creating output directory..."
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# web 디렉토리에서 output 디렉토리로 파일 복사
if [ -d "$WEB_DIR" ]; then
  echo "Copying files from web to output..."
  cp -R "$WEB_DIR/"* "$OUTPUT_DIR/"
else
  echo "Error: $WEB_DIR does not exist."
  exit 1
fi

# (선택 사항) output 디렉토리 내용을 다시 web으로 복사하지 않음
# 이 단계가 필요하지 않다면 제거하는 것이 좋습니다.
# echo "Copying files from output back to web..."
# cp -R "$OUTPUT_DIR/"* "$WEB_DIR/"

# 결과 디버깅
echo "Output directory contents:"
ls -la "$OUTPUT_DIR"

echo "Web directory contents:"
ls -la "$WEB_DIR"

echo "Build script completed successfully."
#!/bin/sh

# 현재 작업 디렉토리를 명시적으로 설정
WORK_DIR="$(pwd)"
WEB_DIR="$WORK_DIR/web"
OUTPUT_DIR="$WORK_DIR/output"

# output 디렉토리 초기화 및 생성
echo "Cleaning and creating output directory..."
rm -rf "$OUTPUT_DIR"
mkdir -p "$OUTPUT_DIR"

# web 디렉토리에서 output 디렉토리로 파일 복사
if [ -d "$WEB_DIR" ]; then
  echo "Copying files from web to output..."
  cp -R "$WEB_DIR/"* "$OUTPUT_DIR/"
else
  echo "Error: $WEB_DIR does not exist."
  exit 1
fi

# (선택 사항) output 디렉토리 내용을 다시 web으로 복사하지 않음
# 이 단계가 필요하지 않다면 제거하는 것이 좋습니다.
# echo "Copying files from output back to web..."
# cp -R "$OUTPUT_DIR/"* "$WEB_DIR/"

# 결과 디버깅
echo "Output directory contents:"
ls -la "$OUTPUT_DIR"

echo "Web directory contents:"
ls -la "$WEB_DIR"

echo "Build script completed successfully."
