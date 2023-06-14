#!/bin/bash

####################
# Author: dennis
# Date: 13th-June
# Version: v1
# this script will report the AWS resource usage
####################

set -x

# AWS S3
echo "Print list of S3 bucket" > test.log
aws s3 ls >> test.log

# AWS EC2
echo "Print EC2 instance" >> test.log
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> test.log

# AWS Lambda
echo "Print lambda function" >> test.log
aws lambda list-functions >> test.log

# AWS IAM User
echo "Print IAM user" >> test.log
aws iam list-users >> test.log
