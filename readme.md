# Using

1) put .MOV files in the 'combine_queue' folder

2) run `run.sh [outputfilename]`

3) see combined files in:  

        combined/combined_outputfilename.mpg
        combined/combined_outputfilename.avi

videos should be concatenated in alphabetical order

# Tips

You can rotate a video with `ffmpeg -i in.MOV -vf "transpose=1" out.mpg`

For the transpose parameter you can pass:

        0 = 90CounterCLockwise and Vertical Flip (default) 
        1 = 90Clockwise 
        2 = 90CounterClockwise 
        3 = 90Clockwise and Vertical Flip


# Dependencies

I can't remember.. ffmpeg?



