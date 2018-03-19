#!/bin/bash

transfer() {
    basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g');
    curl --upload-file "$1" "https://transfer.sh/$basefile";
}

if [ -z "$PLUGIN_UPLOAD" ]; then
    PLUGIN_UPLOAD="app/build/outputs/apk/debug/app-debug.apk"
fi

# Upload file to transfer.sh
transfer $PLUGIN_UPLOAD
