#!/bin/sh

grep -E -i "check h.+" notes.md
grep -i "check h.\+" notes.md #without -E escape the +