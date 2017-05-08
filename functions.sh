#!/usr/bin/env bash

# Play a song from Youtube asynchronously
# $1 (string): Video name (example: "Eminem Lose it")
jv_pg_yp_play_song()
{
  nohup youtube-dl --max-downloads 1 --format mp4 --output "/tmp/$1_audio.mp4" "gvsearch1:$1" --exec "mplayer -novideo -ao alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral \"/tmp/$1_audio.mp4\"; rm \"/tmp/$1_audio.mp4\"" >/dev/null 2>/dev/stdout & disown
}

# Play a video from Youtube asynchronously
# $1 (string): Video name (example: "Eminem Lose it")
jv_pg_yp_play_video()
{
  # Check if showing video as full screen or not
  local full_screen=""
  if [[ $var_jv_pg_yp_video_full_screen =~ "True" ]]; then
    full_screen="-fs"
  fi

  # Download the video and play it
  nohup youtube-dl --max-downloads 1 --format mp4 --output "/tmp/$1_video.mp4" "gvsearch1:$1" --exec "mplayer $full_screen -vf scale -zoom -ao alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral \"/tmp/$1_video.mp4\"; rm \"/tmp/$1_video.mp4\"" >/dev/null 2>/dev/stdout & disown
}

# Stop a launched Youtube video/music
jv_pg_yp_stop()
{
  pkill youtube-dl
  pkill mplayer

  return 0
}
