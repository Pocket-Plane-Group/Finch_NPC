@echo off
cd override
oggdec.exe suf*.ogg
del suf*.ogg
del oggdec.exe
cd ..
