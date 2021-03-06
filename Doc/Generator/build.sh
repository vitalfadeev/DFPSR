#!/bin/bash

# Assuming that you called build.sh from its own folder, you should already be in the project folder.
PROJECT_FOLDER=.
# Placing your executable in the project folder allow using the same relative paths in the final release.
TARGET_FILE=./generator
# The root folder is where DFPSR, SDK and tools are located.
ROOT_PATH=../../Source
# Select where to place temporary files and the generated executable
TEMP_DIR=${ROOT_PATH}/../../temporary
# Select a window manager
WINDOW_MANAGER=NONE
# Flags for the compiler
COMPILER_FLAGS="-std=c++14 -O2"
# Select external libraries
LINKER_FLAGS=""

# Give execution permission
chmod +x ${ROOT_PATH}/tools/build.sh;
# Compile everything
${ROOT_PATH}/tools/build.sh "${PROJECT_FOLDER}" "${TARGET_FILE}" "${ROOT_PATH}" "${TEMP_DIR}" "${WINDOW_MANAGER}" "${COMPILER_FLAGS}" "${LINKER_FLAGS}";

# Execute the generation script to see the changes
chmod +x gen.sh
./gen.sh ./Input .. ./Resources/
