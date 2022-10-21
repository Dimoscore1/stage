@echo off

if not *%GDC_JVM%*==** goto OK_GDC_JVM
echo La variable d'environnement GDC_JVM n'est pas renseignee
goto FIN
:OK_GDC_JVM

if not *%GDC_TOMCAT%*==** goto OK_GDC_TOMCAT
echo La variable d'environnement GDC_TOMCAT n'est pas renseignee
goto FIN
:OK_GDC_TOMCAT

if not *%1*==** goto OK_VERSION
echo Le numero de version est obligatoire
goto FIN
:OK_VERSION

set PATH=%GDC_JVM%\bin;%PATH%

:COPIE
SET ANT_OPTS=-Xmx256m
ant -buildfile build.xml -Djava.home=%GDC_JVM% -Dtomcat.home=%GDC_TOMCAT% -Dversion=%1 %2

:FIN