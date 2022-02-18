#!/bin/bash

OUT_DIR="./out"

RESOLUTION=100
SAMPLINGS=20
ANIM_FRAMES_OPTION="--render-anim"
# textureIDs=['Leather05', 'Metal07', 'Fabric02']

# Make this "true" when testing the scripts
TEST=false
if ${TEST}; then
  RESOLUTION=10
  SAMPLINGS=16
  ANIM_FRAMES_OPTION="--render-frame 1..5"
fi

# Create the output directory
mkdir -p ${OUT_DIR}

# Run the scripts
for id in Leather05 Metal07 Fabric02
do
blender --background --python blenderTexturing.py --render-frame 1 -- ${OUT_DIR}\\blenderTexturing_${id} ${RESOLUTION} ${SAMPLINGS} ${id}
done