#!/usr/bin/env bash

set -x

WEIGHTS='yolov5l.pt'
CFG='./configs/domain/yolov5l_GRL.yaml'
DATA='./data/domain/drones_synth_to_real.yaml'
HYP='/home/denis/nkbtech/yolo-G/data/hyps/hyp.stratim_detection_v1.yaml'
EPOCH=100
PATIENCE=100
IMGSIZE=1920
BATCH=1
DEVICE=0
PROJECT='/home/denis/nkbtech/hdd/denis/yolo_runs/drones/stratim_detection'
NAME='v8x6-oiv7_yoloG_real_7k_synth_7k_v2'

python train_GRL.py\
  --weights $WEIGHTS\
  --cfg $CFG\
  --data $DATA\
  --hyp $HYP\
  --single-cls \
  --epochs $EPOCH\
  --patience $PATIENCE\
  --img $IMGSIZE\
  --batch-size $BATCH\
  --device $DEVICE\
  --project $PROJECT\
  --name $NAME


