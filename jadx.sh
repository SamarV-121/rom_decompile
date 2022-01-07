#!/usr/bin/env bash

axel -n 10 -o rom.zip https://ota-manual-eu.allawnofs.com/ota/21/08/19/d7c859e7-0a63-410d-9e14-db0eb31a28ea.ozip

./tools/rom.sh rom.zip out

rm -r out/rom

./tools/tools/jadx.sh out/rom-deodexed rom-decompiled-jadx

find rom-decompiled-jadx -name classes*.dex | xargs rm

