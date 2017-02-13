ffmpeg -f v4l2 -input_format yuv420p -video_size 320x240 -i /dev/video0 -an -c:v h264_omx -r:v 5 -f segment -segment_format mpegts -segment_time 5 -segment_list stream/playlist.m3u8 stream/a%03d.ts
