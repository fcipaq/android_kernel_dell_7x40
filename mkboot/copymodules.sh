#!/bin/bash

sudo rm /lib/modules/3.10.20/*
sudo cp  ../out64/sound/soc/codecs/snd-soc-wm-hubs.ko /lib/modules/3.10.20/
sudo cp  ../out64/sound/soc/codecs/snd-soc-wm8994.ko /lib/modules/3.10.20/
sudo cp  ../out64/sound/soc/intel/board/snd-merr-dpcm-wm8958.ko /lib/modules/3.10.20/
sudo cp  ../out64/sound/soc/intel/board/snd-merr-saltbay-wm8958.ko /lib/modules/3.10.20/
sudo cp  ../out64/sound/soc/intel/snd-soc-sst-platform.ko /lib/modules/3.10.20/
sudo cp  ../out64/sound/soc/intel/sst/snd-intel-sst.ko /lib/modules/3.10.20/

sudo cp ../out64/sound/modules.order /lib/modules/3.10.20/
sudo cp ../out64/sound/modules.builtin /lib/modules/3.10.20/
