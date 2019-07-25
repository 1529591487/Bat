@echo off

set Name1=*.ADS
set Name2=GM_RSSPI*
set Name3=equipment*
set Name4=protocols*


set FileName=AswRelease.md5

del %FileName%

for %%F in (%Name1%) do (^
	::获取md5值
	certutil -hashfile %%F MD5 >APP_MD5_TXT
	setlocal enabledelayedexpansion
	set index=0
	for /f "tokens=* delims= " %%i in (APP_MD5_TXT) do (^
		::echo %%i
		if !index! == 1 (set md5=%%i) 
 		set /a index=index+1
	)
	::cho !md5!
	del APP_MD5_TXT

	REM 移除md5中的空格,兼容md5出现空格的情况
	set md5=!md5: =!
	
	echo 当前文件MD5: !md5! 
	
	echo %%F		1	!md5!>>%FileName%
)

for %%F in (%Name2%) do (^
	::获取md5值
	certutil -hashfile %%F MD5 >APP_MD5_TXT
	setlocal enabledelayedexpansion
	set index=0
	for /f "tokens=* delims= " %%i in (APP_MD5_TXT) do (^
		::echo %%i
		if !index! == 1 (set md5=%%i) 
 		set /a index=index+1
	)
	::cho !md5!
	del APP_MD5_TXT

	REM 移除md5中的空格,兼容md5出现空格的情况
	set md5=!md5: =!


	echo 当前文件MD5: !md5! 
	
	echo %%F	2	!md5!>>%FileName%
)

for %%F in (%Name3%) do (^
	::获取md5值
	certutil -hashfile %%F MD5 >APP_MD5_TXT
	setlocal enabledelayedexpansion
	set index=0
	for /f "tokens=* delims= " %%i in (APP_MD5_TXT) do (^
		::echo %%i
		if !index! == 1 (set md5=%%i) 
 		set /a index=index+1
	)
	::cho !md5!
	del APP_MD5_TXT

	REM 移除md5中的空格,兼容md5出现空格的情况
	set md5=!md5: =!


	echo 当前文件MD5: !md5! 
	
	echo %%F	3	!md5!>>%FileName%
)

for %%F in (%Name4%) do (^
	::获取md5值
	certutil -hashfile %%F MD5 >APP_MD5_TXT
	setlocal enabledelayedexpansion
	set index=0
	for /f "tokens=* delims= " %%i in (APP_MD5_TXT) do (^
		::echo %%i
		if !index! == 1 (set md5=%%i) 
 		set /a index=index+1
	)
	::cho !md5!
	del APP_MD5_TXT
	REM 移除md5中的空格,兼容md5出现空格的情况
	set md5=!md5: =!

	
	echo 当前文件MD5: !md5! 
	REM 输出不换行 例如 set /p="hello "<nul
	set /p=%%F	4	!md5!<nul>>%FileName%

)


pause



