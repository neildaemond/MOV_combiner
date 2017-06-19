# Using

1) put .MOV files in the 'combine_queue' folder

2) run `run.sh [outputfilename]`

3) see combined files in:  

        combined/combined_outputfilename.mpg
        combined/combined_outputfilename.avi

videos should be concatenated in alphabetical order

** **Note:** Intermediate videos are created then deleted in an insecure manner - ie: the videos will probably show up during any file recovery effort. Therefore, one should not use this tool with sensitive videos. 

# Tips

You can rotate a (1920x1080) video with

        ffmpeg -i in.MOV -vf "transpose=1" out.mpg

or 

        ffmpeg -noautorotate -i out.MOV -strict -2 -qscale:v 1 -vf "transpose=2,scale=-1:1080,pad=1920:1080:656:0" out.MOV


For the transpose parameter you can pass:

        0 = 90CounterCLockwise and Vertical Flip (default) 
        1 = 90Clockwise 
        2 = 90CounterClockwise 
        3 = 90Clockwise and Vertical Flip


# Dependencies

I can't remember.. ffmpeg?



