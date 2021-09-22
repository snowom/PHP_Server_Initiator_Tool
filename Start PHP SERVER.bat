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

::SET VARIABLES
set start_path="C:\Users\Thomaz\Desenvolvimento\projetos_PHP"
set port=8082

echo Diretorio de execucao: %start_path%
echo Porta Usada: %port%
cd %userprofile%
echo.
echo.
if not exist "%start_path%" (
    echo.
    echo ATENCAO - Diretorio invalido ou inexistente
    ping -n 4 localhost > nul
    goto :inicio
)
cd %start_path%
php -S localhost:%port%
