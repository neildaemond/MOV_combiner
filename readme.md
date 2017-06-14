# Using

1) put .MOV files in the 'combine_queue' folder

2) run `run.sh [outputfilename]`

3) see combined files in:  

        combined/combined_outputfilename.mpg
        combined/combined_outputfilename.avi

videos should be concatenated in alphabetical order

# Tips

You can rotate a video with `ffmpeg -i in.MOV -vf "transpose=1" out.mpg`


# Dependencies

I can't remember.. ffmpeg?



