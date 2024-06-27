dart pub global activate protoc_plugin
export PATH="$PATH:$HOME/.pub-cache/bin"
rm -rf src/main/dart
mkdir -p src/main/dart
# shellcheck disable=SC2046
protoc --proto_path=src/main/proto -I=src/main/proto --dart_out=grpc:src/main/dart $(find src/main/proto -type f -name "*.proto")
