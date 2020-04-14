#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}

run udiskie &
run clipster -d
run yams
run unclutter
run mpd_discord_richpresence -p=6601 --no-idle --fork
run redshift
