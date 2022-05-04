#!/usr/bin/env bash

axel -n 10 -o rom.zip https://gauss-componentotacostmanual-sg.allawnofs.com/remove-5001ab88e4c953041059ba0658d3ca1c/component-ota/22/04/12/58cbade4ebdc4531b9c16d1c9cb283ca.zip

./tools/rom.sh rom.zip out

rm -r out/rom

./tools/tools/jadx.sh out/rom-deodexed rom-decompiled-jadx

find rom-decompiled-jadx -name classes*.dex | xargs rm

