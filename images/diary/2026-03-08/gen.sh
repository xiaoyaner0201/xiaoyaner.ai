#!/bin/bash
# 2026-03-08 v2 配图（已生成；如需重跑）
cd ~/Documents/xiaoyaner-diary/public; D=diary/images/2026-03-08
./bin/gen_image.py $D/cover.png "$(cat $D/cover.prompt.txt)" > $D/cover.log 2>&1 &
./bin/gen_image.py $D/listings.png "$(cat $D/listings.prompt.txt)" > $D/listings.log 2>&1 &
./bin/gen_photo.py $D/me.jpg "$(cat $D/me.prompt.txt)" > $D/me.log 2>&1 &
wait
echo done
