#!/bin/sh
# for one XEP, generates HTML file and IETF reference, then copies XML file
# usage: ./gen.sh xxxx 
# (where xxxx is the 4-digit XEP number)

# STAGE
#xeppath=/var/www/stage.xmpp.org/extensions
# PRODUCTION
xeppath=/var/www/xmpp.org/extensions

xsltproc xep.xsl xep-$1.xml > $xeppath/xep-$1.html
xsltproc ref.xsl xep-$1.xml > $xeppath/refs/reference.XSF.XEP-$1.xml

cp xep-$1.xml $xeppath/

# END
