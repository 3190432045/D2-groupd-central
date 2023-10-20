@REM
@REM GIT CLONE FOR GITHUB 20231020
@REM

@SETLOCAL

@REM -----------------------------------------------------------------------

@SET CONFIG_FILE_PATH=CLONECONFIG.TXT
@REM @SET GIT_EXECUTABLE_PATH=
@REM @SET LOCAL_HOME_PATH=HOME
@REM @SET LOCAL_REPO_PATH=
@REM @SET REMOTE_REPO_NAME=origin
@REM @SET REMOTE_REPO_PATH=
@REM @SET REMOTE_REPO_ROOT=
@REM @SET TARGET_REPO_BRANCH=master

@REM -----------------------------------------------------------------------

@ECHO OFF


@ECHO.
@ECHO                           GIT CLONE BATCH
@ECHO.
@ECHO  Reading config file.
@ECHO ===============================================================================
@ECHO.


@IF NOT EXIST %CONFIG_FILE_PATH% GOTO error_config_file
@FOR /F "tokens=1,* delims==" %%a IN (%CONFIG_FILE_PATH%) DO SET "%%a=%%b"
@IF ERRORLEVEL 1 GOTO error_missing_config
@IF NOT DEFINED GIT_EXECUTABLE_PATH SET GIT_EXECUTABLE_PATH=git
@IF NOT DEFINED LOCAL_HOME_PATH SET LOCAL_HOME_PATH=HOME
@REM @IF NOT DEFINED LOCAL_REPO_PATH LOCAL_REPO_PATH=
@IF NOT DEFINED REMOTE_REPO_NAME SET REMOTE_REPO_NAME=origin
@IF NOT DEFINED REMOTE_REPO_PATH GOTO error_missing_config
@IF NOT DEFINED TARGET_REPO_BRANCH SET TARGET_REPO_BRANCH=master


@ECHO.
@ECHO                           GIT CLONE BATCH
@ECHO.
@ECHO  Cloning...
@ECHO ===============================================================================
@ECHO.


@%GIT_EXECUTABLE_PATH% clone -b %TARGET_REPO_BRANCH% %REMOTE_REPO_PATH%
@IF ERRORLEVEL 1 GOTO error_no_repo


@ECHO.
@ECHO                           GIT CLONE BATCH
@ECHO.
@ECHO  Done.
@ECHO ===============================================================================
@ECHO.

@GOTO end

@REM -----------------------------------------------------------------------

:error_config_file
@ECHO ERROR: Cannot open CONFIG.TXT.
@GOTO end

:error_missing_config
@ECHO ERROR: Missing configuration parameters.
@GOTO end

:error_no_repo
@ECHO ERROR: Cannot clone repositary.
@GOTO end


:end
@ECHO Press any key to exit.
@ECHO.
@PAUSE> NUL
@ENDLOCAL
