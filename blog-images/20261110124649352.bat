@echo off
setlocal
cd /d "%~dp0ComfyUI_optimized"
set "LEGACY=%~dp0ComfyUI_FluxKontext"
set "RUNTIME=%~dp0kontext-runtime"
set "PYTHONHOME="
set "PYTHONPATH="
set "PYTHONEXECUTABLE="
set "PYTHONWEXECUTABLE="
set "PYTHONUTF8="
set "PYTHONIOENCODING=utf-8"
set "HF_HUB_DISABLE_TELEMETRY=1"
set "QWEN_INPAINT_WORKFLOW=qwen-turbo-all.json"
set "PATH=%~dp0qwen_inpaint\.venv\Scripts;%~dp0qwen_inpaint\.venv\Lib\site-packages\torch\lib;%RUNTIME%\Scripts;%PATH%"
"%~dp0qwen_inpaint\.venv\Scripts\python.exe" -u "%~dp0qwen_inpaint\launch.py" --models-directory "%LEGACY%\models" --input-directory "%LEGACY%\input" --output-directory "%LEGACY%\output" --use-pytorch-cross-attention --async-offload 2 --cache-classic --disable-partner-nodes --disable-all-custom-nodes --whitelist-custom-nodes Goohaitools-comfyui rgthree-comfy qwen-startup --auto-launch %*
pause
