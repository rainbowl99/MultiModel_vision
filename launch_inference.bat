@echo off
set MODEL_PATH=weights\3b-pt

set PROMPT=this is a sport called 
set IMAGE_FILE_PATH=test_images\test_image_1.jpeg

@REM set PROMPT=these buildings are 
@REM set IMAGE_FILE_PATH=test_images\test_image_2.png

@REM set PROMPT=this is a competition of 
@REM set IMAGE_FILE_PATH=test_images\test_image_3.jpeg

set MAX_TOKENS_TO_GENERATE=100
set TEMPERATURE=0.8
set TOP_P=0.9
set DO_SAMPLE=False
set ONLY_CPU=False

python inference.py ^
    --model_path "%MODEL_PATH%" ^
    --prompt "%PROMPT%" ^
    --image_file_path "%IMAGE_FILE_PATH%" ^
    --max_tokens_to_generate %MAX_TOKENS_TO_GENERATE% ^
    --temperature %TEMPERATURE% ^
    --top_p %TOP_P% ^
    --do_sample %DO_SAMPLE% ^
    --only_cpu %ONLY_CPU%
