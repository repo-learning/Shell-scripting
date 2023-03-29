#!/bin/bash
##################
#Author: Vijaya
#Date: 20-Mar
#Version: v1
#This script will report the AWS resource usage
###########################################

# Resources - S3, Lambda, IAM,EC2
#To run in debug mode 
# set -x

#List all the s3 buckets
echo "S3 buckets list"
aws s3 ls

# List all Ec2 instances, jq is json query to get only the instance id
echo "EC2 instance ids list"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#List Lambda functions
echo "Lambda functions list"
aws lambda list-functions

#List IAM users
echo "IAM users list"
aws iam list-users

