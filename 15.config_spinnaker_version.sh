if [ -z "$1" ]

then

  echo "Mandatory Parameter \$1 : spinnaker version"
  echo "./15.spinnaker_deploy.sh 1.16.4"
  exit

fi

VERSION=$1
hal config version edit --version $VERSION
