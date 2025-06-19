#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print with color
print_color() {
    color=$1
    message=$2
    echo -e "${color}${message}${NC}"
}

# Function to validate package name
validate_package_name() {
    if [[ ! $1 =~ ^[a-z][a-z0-9_]*(\.[a-z][a-z0-9_]*)*$ ]]; then
        print_color $RED "Error: Invalid package name. Package name must:"
        echo "- Start with a lowercase letter"
        echo "- Contain only lowercase letters, numbers, and underscores"
        echo "- Use dots as separators (e.g., com.example.myapp)"
        exit 1
    fi
}

# Check if a new package name is provided
if [ "$#" -ne 1 ]; then
    print_color $RED "Usage: $0 <new_package_name>"
    echo "Example: $0 com.example.myapp"
    exit 1
fi

NEW_PACKAGE_NAME=$1
OLD_PACKAGE_NAME="flutter_mvvm_architecture_template"
OLD_PACKAGE_PATH="flutter_mvvm_architecture_template"

# Validate the new package name
validate_package_name $NEW_PACKAGE_NAME

print_color $BLUE "Starting package rename process..."

# Create package path from package name
NEW_PACKAGE_PATH=$(echo $NEW_PACKAGE_NAME | tr '.' '_')

# Function to replace in files
replace_in_file() {
    if [[ "$OSTYPE" == "darwin"* ]]; then
        # macOS
        sed -i '' "s/$1/$2/g" "$3"
    else
        # Linux and others
        sed -i "s/$1/$2/g" "$3"
    fi
}

# Update pubspec.yaml
print_color $BLUE "Updating pubspec.yaml..."
replace_in_file $OLD_PACKAGE_NAME $NEW_PACKAGE_PATH "pubspec.yaml"

# Update Android files
print_color $BLUE "Updating Android files..."
# Update build.gradle
replace_in_file $OLD_PACKAGE_NAME $NEW_PACKAGE_NAME "android/app/build.gradle.kts"

# Update AndroidManifest.xml files
find android/app/src -name "AndroidManifest.xml" -type f -exec sh -c '
    for file do
        if [[ "$OSTYPE" == "darwin"* ]]; then
            sed -i "" "s/package=\".*\"/package=\"'"$NEW_PACKAGE_NAME"'\"/g" "$file"
        else
            sed -i "s/package=\".*\"/package=\"'"$NEW_PACKAGE_NAME"'\"/g" "$file"
        fi
    done
' sh {} +

# Update MainActivity.java path
OLD_ACTIVITY_PATH="android/app/src/main/java/com/example/$OLD_PACKAGE_PATH"
NEW_ACTIVITY_DIR="android/app/src/main/java/$(echo $NEW_PACKAGE_NAME | tr '.' '/')"

# Create new directory structure
mkdir -p "$NEW_ACTIVITY_DIR"

# Move MainActivity.java to new location
if [ -d "$OLD_ACTIVITY_PATH" ]; then
    mv "$OLD_ACTIVITY_PATH/MainActivity.java" "$NEW_ACTIVITY_DIR/"
    # Remove old directory structure
    rm -rf "android/app/src/main/java/com/example/$OLD_PACKAGE_PATH"
fi

# Update iOS files
print_color $BLUE "Updating iOS files..."
# Update Info.plist
PLIST_FILE="ios/Runner/Info.plist"
if [ -f "$PLIST_FILE" ]; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sed -i '' "s/org.name.${OLD_PACKAGE_NAME}/${NEW_PACKAGE_NAME}/g" "$PLIST_FILE"
    else
        sed -i "s/org.name.${OLD_PACKAGE_NAME}/${NEW_PACKAGE_NAME}/g" "$PLIST_FILE"
    fi
fi

# Update macOS files
print_color $BLUE "Updating macOS files..."
MACOS_PLIST="macos/Runner/Info.plist"
if [ -f "$MACOS_PLIST" ]; then
    if [[ "$OSTYPE" == "darwin"* ]]; then
        sed -i '' "s/org.name.${OLD_PACKAGE_NAME}/${NEW_PACKAGE_NAME}/g" "$MACOS_PLIST"
    else
        sed -i "s/org.name.${OLD_PACKAGE_NAME}/${NEW_PACKAGE_NAME}/g" "$MACOS_PLIST"
    fi
fi

# Update Linux files
print_color $BLUE "Updating Linux files..."
for CMAKE_FILE in $(find . -name "CMakeLists.txt"); do
    replace_in_file $OLD_PACKAGE_NAME $NEW_PACKAGE_PATH "$CMAKE_FILE"
done

# Update Windows files
print_color $BLUE "Updating Windows files..."
WIN_CMAKE="windows/CMakeLists.txt"
if [ -f "$WIN_CMAKE" ]; then
    replace_in_file $OLD_PACKAGE_NAME $NEW_PACKAGE_PATH "$WIN_CMAKE"
fi

# Update web files
print_color $BLUE "Updating web files..."
WEB_INDEX="web/index.html"
if [ -f "$WEB_INDEX" ]; then
    replace_in_file $OLD_PACKAGE_NAME $NEW_PACKAGE_NAME "$WEB_INDEX"
fi
WEB_MANIFEST="web/manifest.json"
if [ -f "$WEB_MANIFEST" ]; then
    replace_in_file $OLD_PACKAGE_NAME $NEW_PACKAGE_NAME "$WEB_MANIFEST"
fi

# Update import statements in Dart files
print_color $BLUE "Updating Dart imports..."
find lib -name "*.dart" -type f -exec sh -c '
    for file do
        if [[ "$OSTYPE" == "darwin"* ]]; then
            sed -i "" "s/package:$OLD_PACKAGE_NAME/package:$NEW_PACKAGE_PATH/g" "$file"
        else
            sed -i "s/package:$OLD_PACKAGE_NAME/package:$NEW_PACKAGE_PATH/g" "$file"
        fi
    done
' sh {} +

print_color $GREEN "Package rename completed successfully!"
print_color $BLUE "Next steps:"
echo "1. Run 'flutter clean'"
echo "2. Run 'flutter pub get'"
echo "3. Run 'flutter run' to test the app"
echo "4. Check for any remaining references to the old package name" 