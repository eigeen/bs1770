#!/bin/sh

set -e

# Download the EBU Test Sequences (© EBU) that are referenced in EBU Tech 3341.
# Tests verify the implementation against the known loudness values of these
# files. See also https://tech.ebu.ch/publications/ebu_loudness_test_set.
# Edit by Eigeen: 403 forbidden, use other url
wget --no-clobber https://files.catbox.moe/yg8dhb.zip -O ebu-loudness-test-setv05.zip
# The -o flag causes unzip to overwrite the file if it exists.
unzip -o ebu-loudness-test-setv05.zip seq-3341-7_seq-3342-5-24bit.wav
unzip -o ebu-loudness-test-setv05.zip seq-3341-2011-8_seq-3342-6-24bit-v02.wav
mv seq-3341-7_seq-3342-5-24bit.wav tech_3341_test_case_7.wav
mv seq-3341-2011-8_seq-3342-6-24bit-v02.wav tech_3341_test_case_8.wav
