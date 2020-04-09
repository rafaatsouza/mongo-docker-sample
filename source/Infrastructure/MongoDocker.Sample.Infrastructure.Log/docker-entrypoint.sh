#!/bin/sh -e

SERVICE="http://logseq"

until curl -fs ${SERVICE}  > /dev/null; 
do
  >&2 echo "${SERVICE} is unavailable - sleeping"
  sleep 2
done
>&2 echo "${SERVICE} is up"

#/bin/seqcli/seqcli apikey create --title='mongo-docker-api' --token='2(|=KcHS_N2u+TgV!%Fs7Z1fN$j_BI' --server=${SERVICE}
/bin/seqcli/seqcli apikey create --title='mongo-docker-api' --token='${SEQ_LOG_TOKEN}' --server=${SERVICE}

exit 0
