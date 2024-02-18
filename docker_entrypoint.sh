#!/bin/bash

if [ -z "$GOOGLE_USERNAME" ]
then
    echo "Must set environment variable GOOGLE_USERNAME"
    exit 1
fi

if [ -z "$GOOGLE_APP_PASSWORD" ]
then
    echo "Must set environment variable GOOGLE_APP_PASSWORD, see https://myaccount.google.com/apppasswords"
    exit 1
fi

set -u

python3 /login.py "$GOOGLE_USERNAME" "$GOOGLE_APP_PASSWORD"