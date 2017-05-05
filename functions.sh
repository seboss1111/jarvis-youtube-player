#!/usr/bin/env bash

# Play a song from Youtube
# $1 (string): Video name (example: "Eminem Lose it")
# $2 (bool, optional): Verbose ("True" for Jarvis response, "False" or no value for no Jarvis response)
jv_pg_yp_play_song()
{
  # Download the video and play the song
  if [[ $2 =~ "True" ]]; then
    youtube-dl --verbose --max-downloads 1 --format mp4 --output "/tmp/$1_audio.mp4" "gvsearch1:$1" && mplayer -novideo -ao alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral "/tmp/$1_audio.mp4" && rm "/tmp/$1_audio.mp4" &
  else
    nohup youtube-dl --max-downloads 1 --format mp4 --output "/tmp/$1_audio.mp4" "gvsearch1:$1" && mplayer -novideo alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral "/tmp/$1_audio.mp4" && rm "/tmp/$1_audio.mp4" >/dev/null 2>/dev/stdout &
  fi
}

# Play a video from Youtube
# $1 (string): Video name (example: "Eminem Lose it")
# $2 (bool, optional): Verbose ("True" for Jarvis response, "False" or no value for no Jarvis response)
jv_pg_yp_play_video()
{
  # Check if showing video as full screen or not
  local full_screen=""
  if [[ $var_jv_pg_yp_video_full_screen =~ "True" ]]; then
    full_screen="-fs"
  fi

  # Download the video and play it
  if [[ $2 =~ "True" ]]; then
    youtube-dl --verbose --max-downloads 1 --format mp4 --output "/tmp/$1_video.mp4" "gvsearch1:$1" && mplayer $full_screen -vf scale -zoom -ao alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral "/tmp/$1_video.mp4" && rm "/tmp/$1_video.mp4" &
  else
    nohup youtube-dl --max-downloads 1 --format mp4 --output "/tmp/$1_video.mp4" "gvsearch1:$1" && mplayer $full_screen -vf scale -zoom alsa:device=hw=$var_jv_pg_yp_audio_card.$var_jv_pg_yp_audio_peripheral "/tmp/$1_video.mp4" && rm "/tmp/$1_video.mp4" >/dev/null 2>/dev/stdout &
  fi
}
