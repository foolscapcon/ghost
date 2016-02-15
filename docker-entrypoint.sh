#!/bin/bash
set -exv

if [[ "$*" == npm*start* ]]; then
	# for dir in "$GHOST_SOURCE_CONTENT"/*/; do
	# 	targetDir="$GHOST_CONTENT/$(basename "$dir")"
	# 	mkdir -p "$targetDir"
	# 	if [ -z "$(ls -A "$targetDir")" ]; then
	# 		tar -c --one-file-system -C "$dir" . | tar xC "$targetDir"
	# 	fi
	# done

    #mkdir -p "$GHOST_CONTENT"
    #cp "$GHOST_CONFIG_JS" "$GHOST_CONTENT/config.js"
    ( set +e
      chown -R user "$GHOST_CONTENT" 
      true )
    set -- gosu user "$@"
fi

exec "$@"
