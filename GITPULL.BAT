@REM
@REM GIT PULL FOR GITHUB 20231020
@REM

@SETLOCAL

@REM -----------------------------------------------------------------------

@SET CONFIG_FILE_PATH=PULLPUSHCONFIG.TXT
@REM @SET GIT_EXECUTABLE_PATH=
@REM @SET LOCAL_REPO_PATH=
@REM @SET REMOTE_REPO_NAME=origin
@REM @SET REMOTE_REPO_PATH=
@REM @SET REMOTE_REPO_ROOT=
@REM @SET TARGET_REPO_BRANCH=master

@REM -----------------------------------------------------------------------

@ECHO OFF


@ECHO.
@ECHO                           GIT PULL BATCH
@ECHO.
@ECHO  Reading config file.
@ECHO ===============================================================================
@ECHO.


@IF NOT EXIST %CONFIG_FILE_PATH% GOTO error_config_file
@FOR /F "tokens=1,* delims==" %%a IN (%CONFIG_FILE_PATH%) DO SET "%%a=%%b"
@IF ERRORLEVEL 1 GOTO error_missing_config
@IF NOT DEFINED GIT_EXECUTABLE_PATH SET GIT_EXECUTABLE_PATH=git
@IF NOT DEFINED REMOTE_REPO_NAME SET REMOTE_REPO_NAME=origin
@IF NOT DEFINED TARGET_REPO_BRANCH SET TARGET_REPO_BRANCH=master


@%GIT_EXECUTABLE_PATH% status
@IF ERRORLEVEL 1 GOTO error_no_repo


@ECHO.
@ECHO                           GIT PULL BATCH
@ECHO.
@ECHO  Do you wish to continue?
@ECHO ===============================================================================
@ECHO Enter y/n or press ENTER to abort
@ECHO.

@SET VAR=
@SET /P VAR="Enter: "

@IF NOT DEFINED VAR GOTO act_aborted
@IF "%VAR%"=="n" GOTO act_aborted
@IF "%VAR%"=="N" GOTO act_aborted
@IF "%VAR%"=="no" GOTO act_aborted
@IF "%VAR%"=="NO" GOTO act_aborted
@IF "%VAR%"=="y" GOTO act_pull
@IF "%VAR%"=="Y" GOTO act_pull
@IF "%VAR%"=="yes" GOTO act_pull
@IF "%VAR%"=="YES" GOTO act_pull
@GOTO act_aborted


@REM -----------------------------------------------------------------------

:act_pull
@ECHO.
@ECHO                           GIT PULL BATCH
@ECHO.
@ECHO  Pulling...
@ECHO ===============================================================================
@ECHO.


@%GIT_EXECUTABLE_PATH% pull %REMOTE_REPO_NAME% %TARGET_REPO_BRANCH%
@IF ERRORLEVEL 1 GOTO error_no_pull
@%GIT_EXECUTABLE_PATH% checkout %TARGET_REPO_BRANCH%
@IF ERRORLEVEL 1 GOTO error_no_pull


@ECHO.
@ECHO                           GIT PULL BATCH
@ECHO.
@ECHO  Done.
@ECHO ===============================================================================
@ECHO.

@GOTO :end

:error_config_file
@ECHO ERROR: Cannot open PULLPUSHCONFIG.TXT.
@GOTO end

:error_missing_config
@ECHO ERROR: Missing configuration parameters.
@GOTO end

:error_no_repo
@ECHO ERROR: Not in local repositary.
@GOTO end

:error_no_pull
@ECHO ERROR: Cannot pull from remote repositary.
@GOTO end

:act_aborted
@ECHO.
@ECHO                           GIT PULL BATCH
@ECHO.
@ECHO  Action aborted.
@ECHO ===============================================================================
@ECHO.
@GOTO end


:end
@ECHO Press any key to exit.
@ECHO.
@PAUSE> NUL
@ENDLOCAL
