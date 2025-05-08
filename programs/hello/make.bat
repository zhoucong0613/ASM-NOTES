@echo off
:: 使用方法:
::   make 文件名         编译并运行
::   make 文件名 clean   删除生成文件

:: 判断是否为 clean 模式
if "%2" == "clean" goto clean

masm %1.asm;
link %1.obj;
%1.exe
goto end

:clean
del %1.obj
del %1.exe
del %1.lst
del %1.map

:end
