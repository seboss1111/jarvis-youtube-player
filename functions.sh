#!/usr/bin/env bash

# Play a song from Youtube
# $1 (string): Video name (example: "Eminem Lose it")
# $2 (bool, optional): Verbose ("True" for Jarvis response, "False" or no value for no Jarvis response)
jv_pg_yp_play_song()
{
  # Download the video and play the song
  if [[ $2 =~ "True" ]]; then
    youtube-dl --max-downloads 1 --format mp4 --output "/tmp/$1.mp4" "gvsearch1:$1" && mplayer -novideo -ao alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral "/tmp/$1.mp4" && rm "/tmp/$1.mp4" &
  else
    nohup youtube-dl --max-downloads 1 --format mp4 --output "/tmp/$1.mp4" "gvsearch1:$1" && mplayer -novideo alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral "/tmp/$1.mp4" && rm "/tmp/$1.mp4" >/dev/null 2>/dev/stdout &
  fi
}