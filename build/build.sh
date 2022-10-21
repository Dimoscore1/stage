if [ "$GDC_JVM" = "" ]
then
	echo "La variable d'environnement GDC_JVM n'est pas renseignee"
	exit 1
fi

if [ "$GDC_TOMCAT" = "" ]
then
	echo "La variable d'environnement GDC_TOMCAT n'est pas renseignee"
	exit 1
fi

if [ "$1" = "" ]
then
	echo "Le numero de version est obligatoire"
	exit 1
fi


ANT_OPTS=-Xmx256m
export ANT_OPTS

ant -buildfile build.xml -Djava.home=$GDC_JVM -Dtomcat.home=$GDC_TOMCAT -Dversion=$1 $2
