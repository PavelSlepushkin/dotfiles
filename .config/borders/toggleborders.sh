#!/bin/bash
windowID=$(yabai -m query --windows --window | jq '.id')
if $(yabai -m query --windows --window |jq '."has-fullscreen-zoom"'); then 
  borders active_color=0xffff0000 apply-to=${windowID}
else
  borders active_color=0xffff7600 apply-to=${windowID}
fi
