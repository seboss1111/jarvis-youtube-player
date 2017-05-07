#!/usr/bin/env bash

# Play a song from Youtube synchronously (can't speak with Jarvis when music is playing)
# $1 (string): Video name (example: "Eminem Lose it")
jv_pg_yp_play_song_synchronously()
{
  youtube-dl --max-downloads 1 --format mp4 --output "/tmp/$1_audio.mp4" "gvsearch1:$1" --exec "mplayer -novideo -ao alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral \"/tmp/$1_audio.mp4\"; rm \"/tmp/$1_audio.mp4\""
}

# Play a song from Youtube asynchronously
# $1 (string): Video name (example: "Eminem Lose it")
jv_pg_yp_play_song()
{
  if [[ $var_jv_pg_yp_verbose =~ "True" ]]; then
    jv_pg_yp_play_song_synchronously "$1" &
  else
    jv_pg_yp_play_song_synchronously "$1" >/dev/null 2>/dev/stdout &
  fi
}

# Play a video from Youtube synchronously
# $1 (string): Video name (example: "Eminem Lose it")
jv_pg_yp_play_video_synchronously()
{
  # Check if showing video as full screen or not
  local full_screen=""
  if [[ $var_jv_pg_yp_video_full_screen =~ "True" ]]; then
    full_screen="-fs"
  fi

  # Download the video and play it
  youtube-dl --max-downloads 1 --format mp4 --output "/tmp/$1_video.mp4" "gvsearch1:$1" --exec "mplayer $full_screen -vf scale -zoom -ao alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral \"/tmp/$1_video.mp4\"; rm \"/tmp/$1_video.mp4\""
}

# Play a video from Youtube asynchronously
# $1 (string): Video name (example: "Eminem Lose it")
jv_pg_yp_play_video()
{
  if [[ $var_jv_pg_yp_verbose =~ "True" ]]; then
    jv_pg_yp_play_video_synchronously "$1" &
  else
    jv_pg_yp_play_video_synchronously "$1" >/dev/null 2>/dev/stdout &
  fi
}
