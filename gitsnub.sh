#!/bin/bash

# this code is horrid.

set -e

if [[ "$GITHUB_TOKEN" == '' ]]; then
	echo "GITHUB_TOKEN seems empty"
	echo "You can generate one here: https://github.com/settings/tokens"
	echo
	echo "Once you have it, do:"
	echo "export GITHUB_TOKEN=<token>"
	exit 1
fi

if [[ "$1" == "" ]] || [[ "$1" == "--help" ]]; then
	echo
	echo "usage:"
	echo "    $0 someorg/project otherorg/project ..."
	exit 0
fi

COMMIT_HASH_URLS=""

for p in "$@"; do
	echo "+-- forking: $p"
	gh repo fork "$p" --clone=true
done

for d in */; do
	cp README.md $d/GITHUB_IS_EVIL.md
	cd $d/ 
	git add ./
	sed -i -r -e "s#url = https://github#url = https://x-access-token:$GITHUB_TOKEN@github#" .git/config
	git commit -m '#Hacktoberfest'
	git push
	COMMIT_HASH_URLS="$COMMIT_HASH_URLS
	$(git remote get-url upstream | sed -r -e 's/x-access.+\@//' -r -e 's#\.git#/blob/#' | tr -d '\n'; git rev-parse HEAD | tr -d '\n' )/GITHUB_IS_EVIL.md"
	cd ../
done

echo
echo
echo "$COMMIT_HASH_URLS"
