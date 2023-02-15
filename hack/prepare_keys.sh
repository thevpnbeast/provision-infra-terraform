#!/bin/bash

# export AWS_PROFILE="thevpnbeast-root"
# BUCKET_NAME="thevpnbeast-terraform-states-1"

object_exists=$(aws s3api head-object --bucket ${BUCKET_NAME} --region us-east-1 --key keys/ec2.pem || true)
if [ -z "$object_exists" ]; then
    echo "key pair does not exist on bucket ${BUCKET_NAME}, creating a fresh key pair and uploading to S3"
    ssh-keygen -t rsa -b 2048 -f generated/ec2.pem -q -P ''
    ssh-keygen -y -f generated/ec2.pem > generated/ec2.pub
    aws s3api put-object --region us-east-1 --bucket ${BUCKET_NAME} --key keys/ec2.pem --body generated/ec2.pem
    aws s3api put-object --region us-east-1 --bucket ${BUCKET_NAME} --key keys/ec2.pub --body generated/ec2.pub
else
    echo "key pair exists on bucket ${BUCKET_NAME}, downloading existing key pair from S3"
    echo "y" | aws s3api get-object --region us-east-1 --bucket ${BUCKET_NAME} --key keys/ec2.pem generated/ec2.pem
    echo "y" | aws s3api get-object --region us-east-1 --bucket ${BUCKET_NAME} --key keys/ec2.pub generated/ec2.pub
fi