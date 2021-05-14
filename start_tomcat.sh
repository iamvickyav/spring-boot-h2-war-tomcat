echo "*** TOMCAT SCRIPT EXECUTION START ***"
echo "*** INPUT PATH: $1 ***"
DIR=$1
if [ -d "$DIR" ]; then
  cd $1
  cd bin
  echo "*** ENTERING TOMCAT bin DIRECTORY: $(pwd) ***"
  echo "*** STARTING TOMCAT WITH catalina.sh start COMMAND ***"
  ./catalina.sh start
else
  echo "*** INVALID PATH INPUT ***"
  exit 1
fi
  echo "*** TOMCAT SCRIPT EXECUTION END ***"