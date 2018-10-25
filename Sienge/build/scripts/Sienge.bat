@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Sienge startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and SIENGE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\Sienge.jar;%APP_HOME%\lib\h2-1.4.196.jar;%APP_HOME%\lib\spring-boot-starter-data-jpa-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-web-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-devtools-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-aop-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-jdbc-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-json-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-2.0.0.RELEASE.jar;%APP_HOME%\lib\hibernate-core-5.2.14.Final.jar;%APP_HOME%\lib\javax.transaction-api-1.2.jar;%APP_HOME%\lib\spring-data-jpa-2.0.5.RELEASE.jar;%APP_HOME%\lib\spring-aspects-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-2.0.0.RELEASE.jar;%APP_HOME%\lib\hibernate-validator-6.0.7.Final.jar;%APP_HOME%\lib\spring-webmvc-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-web-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-boot-autoconfigure-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-2.0.0.RELEASE.jar;%APP_HOME%\lib\spring-boot-starter-logging-2.0.0.RELEASE.jar;%APP_HOME%\lib\javax.annotation-api-1.3.2.jar;%APP_HOME%\lib\spring-context-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-aop-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-orm-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-jdbc-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-data-commons-2.0.5.RELEASE.jar;%APP_HOME%\lib\spring-tx-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-beans-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-expression-5.0.4.RELEASE.jar;%APP_HOME%\lib\spring-core-5.0.4.RELEASE.jar;%APP_HOME%\lib\snakeyaml-1.19.jar;%APP_HOME%\lib\aspectjweaver-1.8.13.jar;%APP_HOME%\lib\HikariCP-2.7.8.jar;%APP_HOME%\lib\hibernate-commons-annotations-5.0.1.Final.jar;%APP_HOME%\lib\jboss-logging-3.3.1.Final.jar;%APP_HOME%\lib\hibernate-jpa-2.1-api-1.0.0.Final.jar;%APP_HOME%\lib\javassist-3.22.0-GA.jar;%APP_HOME%\lib\antlr-2.7.7.jar;%APP_HOME%\lib\jandex-2.0.3.Final.jar;%APP_HOME%\lib\classmate-1.3.1.jar;%APP_HOME%\lib\dom4j-1.6.1.jar;%APP_HOME%\lib\logback-classic-1.2.3.jar;%APP_HOME%\lib\log4j-to-slf4j-2.10.0.jar;%APP_HOME%\lib\jul-to-slf4j-1.7.25.jar;%APP_HOME%\lib\slf4j-api-1.7.25.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.9.4.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.9.4.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.9.4.jar;%APP_HOME%\lib\jackson-databind-2.9.4.jar;%APP_HOME%\lib\tomcat-embed-websocket-8.5.28.jar;%APP_HOME%\lib\tomcat-embed-core-8.5.28.jar;%APP_HOME%\lib\tomcat-embed-el-8.5.28.jar;%APP_HOME%\lib\validation-api-2.0.1.Final.jar;%APP_HOME%\lib\spring-jcl-5.0.4.RELEASE.jar;%APP_HOME%\lib\jackson-annotations-2.9.0.jar;%APP_HOME%\lib\jackson-core-2.9.4.jar;%APP_HOME%\lib\logback-core-1.2.3.jar;%APP_HOME%\lib\log4j-api-2.10.0.jar;%APP_HOME%\lib\tomcat-annotations-api-8.5.28.jar

@rem Execute Sienge
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %SIENGE_OPTS%  -classpath "%CLASSPATH%" br.com.softplan.sienge.main.App %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable SIENGE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%SIENGE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega