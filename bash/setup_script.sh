#!/bin/bash

# Add auto-complete for the aws cli
aws_auto_complete=/bin/aws_completer

if [ -f "$aws_auto_complete" ]
then
    echo "Adding auto-complete for the AWS cli"
    complete -C "$aws_auto_complete" aws
else
    echo "$aws_auto_complete does not exist. NOT adding auto-complete for the AWS cli"
fi

