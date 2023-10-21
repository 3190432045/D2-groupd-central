@REM
@REM GIT PUSH FOR GITHUB 20231021
@REM

@SETLOCAL

@REM -----------------------------------------------------------------------

@SET CONFIG_FILE_PATH=PULLPUSHCONFIG.TXT
@REM @SET ACCOUNT_FILE_PATH=ACCOUNT.TXT
@REM @SET GIT_EXECUTABLE_PATH=
@REM @SET LOCAL_REPO_PATH=
@REM @SET REMOTE_REPO_NAME=origin
@REM @SET REMOTE_REPO_PATH=
@REM @SET REMOTE_REPO_ROOT=
@REM @SET TARGET_REPO_BRANCH=master

@REM -----------------------------------------------------------------------

@ECHO OFF

@ECHO.
@ECHO                           GIT PUSH BATCH
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

@REM @IF EXIST %ACCOUNT_FILE_PATH% FOR /F "tokens=1,* delims==" %%a IN (%ACCOUNT_FILE_PATH%) DO SET "%%a=%%b"
@REM @IF NOT DEFINED REPO_ACCOUNT SET REPO_ACCOUNT=
@REM @IF NOT DEFINED REPO_PASSWORD SET REPO_PASSWORD=
@REM @IF NOT DEFINED REPO_TOKEN SET REPO_TOKEN=
@REM ECHO %REPO_ACCOUNT%


@%GIT_EXECUTABLE_PATH% status
@IF ERRORLEVEL 1 GOTO error_no_repo

@ECHO.
@ECHO                           GIT PUSH BATCH
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
@ECHO                           GIT PUSH BATCH
@ECHO.
@ECHO  Pulling...
@ECHO ===============================================================================
@ECHO.


@%GIT_EXECUTABLE_PATH% pull %REMOTE_REPO_NAME% %TARGET_REPO_BRANCH%
@IF ERRORLEVEL 1 GOTO error_no_pull
@%GIT_EXECUTABLE_PATH% checkout %TARGET_REPO_BRANCH%
@IF ERRORLEVEL 1 GOTO error_no_pull


@ECHO.
@ECHO                           GIT PUSH BATCH
@ECHO.
@ECHO  Do you wish to add all untracked files?
@ECHO ===============================================================================
@ECHO Enter y/n or press ENTER to abort
@ECHO.

@SET VAR=
@SET /P VAR="Enter: "

@IF NOT DEFINED VAR GOTO act_aborted
@IF "%VAR%"=="n" GOTO act_commit
@IF "%VAR%"=="N" GOTO act_commit
@IF "%VAR%"=="no" GOTO act_commit
@IF "%VAR%"=="NO" GOTO act_commit
@IF "%VAR%"=="y" GOTO act_add_all
@IF "%VAR%"=="Y" GOTO act_add_all
@IF "%VAR%"=="yes" GOTO act_add_all
@IF "%VAR%"=="YES" GOTO act_add_all
@GOTO act_aborted


:act_add_all
@ECHO.
@ECHO                           GIT PUSH BATCH
@ECHO.
@ECHO  Applying changes to all untracked files...
@ECHO ===============================================================================
@ECHO.


@%GIT_EXECUTABLE_PATH% add -A
@IF ERRORLEVEL 1 GOTO error_add_all
@GOTO act_commit


:act_commit
@ECHO.
@ECHO                           GIT PUSH BATCH
@ECHO.
@ECHO  Enter your commit message.
@ECHO ===============================================================================
@ECHO Enter your message and press ENTER or press ENTER to skip this step, messege will be replaced by current date
@ECHO.

@SET MSG=
@SET /P MSG="Enter: "
@IF NOT DEFINED MSG SET MSG=%DATE%
ECHO %MSG%


@ECHO.
@ECHO                           GIT PUSH BATCH
@ECHO.
@ECHO  Committing...
@ECHO ===============================================================================
@ECHO.


@%GIT_EXECUTABLE_PATH% commit -a -m "%MSG%"
@IF ERRORLEVEL 1 ECHO WARNING: Cannot commit or nothing to commit.
@REM @IF ERRORLEVEL 1 GOTO :error_commit


@ECHO.
@ECHO                           GIT PUSH BATCH
@ECHO.
@ECHO  Push to remote repositary now?
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
@IF "%VAR%"=="y" GOTO act_push
@IF "%VAR%"=="Y" GOTO act_push
@IF "%VAR%"=="yes" GOTO act_push
@IF "%VAR%"=="YES" GOTO act_push
@GOTO act_aborted


:act_push
@ECHO.
@ECHO                           GIT PUSH BATCH
@ECHO.
@ECHO  Pushing...
@ECHO ===============================================================================
@ECHO.

@REM @IF EXIST %ACCOUNT_FILE_PATH% (
@REM %GIT_EXECUTABLE_PATH% push %REMOTE_REPO_NAME% %TARGET_REPO_BRANCH%:%TARGET_REPO_BRANCH% < %ACCOUNT_FILE_PATH%
@REM ) ELSE (
@REM %GIT_EXECUTABLE_PATH% push %REMOTE_REPO_NAME% %TARGET_REPO_BRANCH%:%TARGET_REPO_BRANCH%
@REM )
%GIT_EXECUTABLE_PATH% push %REMOTE_REPO_NAME% %TARGET_REPO_BRANCH%:%TARGET_REPO_BRANCH%
@IF ERRORLEVEL 1 GOTO error_push

@ECHO.
@ECHO                           GIT PUSH BATCH
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

:error_add_all
@ECHO ERROR: Cannot add untracked files.
@GOTO end

@REM :error_commit
@REM @ECHO ERROR: Cannot commit or nothing to commit.
@REM @GOTO end

:error_push
@ECHO ERROR: Cannot push to remote repositary.
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
