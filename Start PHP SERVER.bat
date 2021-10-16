@echo off
color a
mode 90,28
title PHP Server Initiator Tool

:inicio
cls
echo     *********************************************************************************
echo    "    ___  __ _____    ____                       _      _ __  _      __           "
echo    "   / _ \/ // / _ \  / __/__ _____  _____ ____  (_)__  (_) /_(_)__ _/ /____  ____ "
echo    "  / ___/ _  / ___/ _\ \/ -_) __/ |/ / -_) __/ / / _ \/ / __/ / _ `/ __/ _ \/ __/ "
echo    " /_/  /_//_/_/    /___/\__/_/  |___/\__/_/   /_/_//_/_/\__/_/\_,_/\__/\___/_/    "
echo    "                                __            __                                 "
echo    "                               / /____  ___  / /                                 "
echo    "                              / __/ _ \/ _ \/ /                                  "
echo    "                              \__/\___/\___/_/                                   "
echo    "                                                                                 "
echo     *********************************************************************************
echo.
echo.

::SET VARIABLES - EDIT THIS WITH YOUR PREFERENCE
set language="en"
set start_path="C:\Users\Thomaz\Desenvolvimento\Site Posso Ler"
set port=8082


if %language% EQU "pt-BR" (
    set lblDirExecute=Diretorio de execucao:
    set lblPort=Porta Usada:
    set lblInvalidPath=ATENCAO - O caminho especificado na variavel start_path eh invalido ou nao existe.
) else (
    if %language% EQU "en" (
        set lblDirExecute=Execution Directory:
        set lblPort=Used Port:
        set lblInvalidPath=ATTENTION - The path specified in the start_path variable is invalid or does not exist.
    ) else (
        if %language% EQU "es" (
            set lblDirExecute=Directorio de ejecucion:
            set lblPort=Puerto usado:
            set lblInvalidPath=ATENCION: la ruta especificada en la variable start_path no es valida o no existe.
        ) else (
            set lblDirExecute=Diretorio de execucao:
            set lblPort=Porta Usada:
            set lblInvalidPath=ATENCAO - O caminho especificado na variavel start_path eh invalido ou nao existe.
        )
    )
)

echo %lblDirExecute% %start_path%
echo %lblPort% %port%
cd %userprofile%
echo.
echo.
if not exist %start_path% (
    echo %lblInvalidPath%
    echo.
    echo.
    echo.
    pause
    exit
)
cd %start_path%
php -S localhost:%port%
