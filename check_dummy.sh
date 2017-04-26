#!/bin/bash

#Author Siva Paramasivam <apsivam@apsivam.in>
#Initial version 0.1

#Check required parameters
if [ $# -ne 2 ]
then
    echo "Usage: $(basename $0) <return code> <return text>"
    exit 3
fi

RETURN_CODE="$1"
RETURN_TEXT="$2"

case "$RETURN_CODE" in
    "0")
        echo "OK: ${RETURN_TEXT}"
        ;;
    "1")
        echo "WARNING: ${RETURN_TEXT}"
        ;;
    "2")
        echo "CRITICAL: ${RETURN_TEXT}"
        ;;
    "3")
        echo "WARNING: ${RETURN_TEXT}"
        ;;
    *)
        echo "UNKNOWN: Return code ${RETURN_CODE} is not supported"
        exit 3
esac

exit $RETURN_CODE
