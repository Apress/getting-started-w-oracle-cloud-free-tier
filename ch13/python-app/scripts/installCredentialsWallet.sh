#!/bin/bash

echo "Installing wallet..."

mkdir -p $ORACLE_HOME/network/admin

unzip /tmp/${CREDENTIALS_WALLET} -d $ORACLE_HOME/network/admin

rm /tmp/$CREDENTIALS_WALLET
