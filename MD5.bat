@echo off

set Name1=*.ADS
set Name2=GM_RSSPI*
set Name3=equipment*
set Name4=protocols*


set FileName=AswRelease.md5

del %FileName%

for %%F in (%Name1%) do (^
	::��ȡmd5ֵ
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

	REM �Ƴ�md5�еĿո�,����md5���ֿո�����
	set md5=!md5: =!
	
	echo ��ǰ�ļ�MD5: !md5! 
	
	echo %%F		1	!md5!>>%FileName%
)

for %%F in (%Name2%) do (^
	::��ȡmd5ֵ
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

	REM �Ƴ�md5�еĿո�,����md5���ֿո�����
	set md5=!md5: =!


	echo ��ǰ�ļ�MD5: !md5! 
	
	echo %%F	2	!md5!>>%FileName%
)

for %%F in (%Name3%) do (^
	::��ȡmd5ֵ
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

	REM �Ƴ�md5�еĿո�,����md5���ֿո�����
	set md5=!md5: =!


	echo ��ǰ�ļ�MD5: !md5! 
	
	echo %%F	3	!md5!>>%FileName%
)

for %%F in (%Name4%) do (^
	::��ȡmd5ֵ
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
	REM �Ƴ�md5�еĿո�,����md5���ֿո�����
	set md5=!md5: =!

	
	echo ��ǰ�ļ�MD5: !md5! 
	REM ��������� ���� set /p="hello "<nul
	set /p=%%F	4	!md5!<nul>>%FileName%

)


pause



