BASEDIR=/var/webapps
RELEASEDIR=$BASEDIR/lampo.release
TRUNKDIR=$BASEDIR/lampo.trunk

BASESVN=https://svn.peace.daveramsey.com/
RELEASESVN=$BASESVN/branches/release
TRUNKSVN=$BASESVN/trunk

mkdir -p $TRUNKDIR/share/conf
if [ ! -e $TRUNKDIR/cfmain ]; then svn checkout $TRUNKSVN/daveramsey_com $TRUNKDIR/cfmain; fi
if [ ! -e $TRUNKDIR/dr ]; then svn checkout $TRUNKSVN/dr09 $TRUNKDIR/dr; fi
if [ ! -e $TRUNKDIR/share/cfccomponents ]; then svn checkout $TRUNKSVN/cfccomponents $TRUNKDIR/share/cfccomponents; fi
if [ ! -e $TRUNKDIR/share/frameworks ]; then svn checkout $TRUNKSVN/frameworks $TRUNKDIR/share/frameworks; fi

mkdir -p $RELEASEDIR/share/conf
if [ ! -e $RELEASEDIR/cfmain ]; then svn checkout $RELEASESVN/daveramsey_com $RELEASEDIR/cfmain; fi
if [ ! -e $RELEASEDIR/dr ]; then svn checkout $RELEASESVN/DR09 $RELEASEDIR/dr; fi
if [ ! -e $RELEASEDIR/share/cfccomponents ]; then svn checkout $RELEASESVN/cfccomponents $RELEASEDIR/share/cfccomponents; fi
if [ ! -e $RELEASEDIR/share/frameworks ]; then svn checkout $RELEASESVN/frameworks $RELEASEDIR/share/frameworks; fi

