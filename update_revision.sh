#!/bin/sh

# Meant to be run as a post-commit hook on the cerofiles repository
# when it is added as an env/ directory of the cerowrt repository.
# Records the new revision in the cerofiles.revision file in the parent
# repository if such a file exists.

[ -f ../cerofiles.revision ] && git rev-parse --verify HEAD > ../cerofiles.revision
