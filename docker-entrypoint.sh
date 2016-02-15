#!/bin/bash
set -e

if [[ "$*" == npm*start* ]]; then
	# for dir in "$GHOST_SOURCE_CONTENT"/*/; do
	# 	targetDir="$GHOST_CONTENT/$(basename "$dir")"
	# 	mkdir -p "$targetDir"
	# 	if [ -z "$(ls -A "$targetDir")" ]; then
	# 		tar -c --one-file-system -C "$dir" . | tar xC "$targetDir"
	# 	fi
	# done

	chown -Rf user "$GHOST_CONTENT"
        cp "$GHOST_SOURCE_CONTENT/config/config.js" "$GHOST_CONTENT/config.js"
	set -- gosu user "$@"
fi

exec "$@"
