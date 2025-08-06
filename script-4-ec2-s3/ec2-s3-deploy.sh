#!/usr/bin/env bash


# =======================
# Environment Variables
# =======================
AWS_REGION=${AWS_REGION:-"us-east-1"}
AMI_ID="ami-084a7d336e816906b" # Example Amazon Linux 2 AMI
KEY_NAME="key"

# =======================
# Command Line Arguments
# =======================
INSTANCE_TYPE=$1
BUCKET_NAME=$2

if [ -z "$INSTANCE_TYPE" ] || [ -z "$BUCKET_NAME" ]; then
  echo "Usage: $0 <instance_type> <s3_bucket_name>"
  exit 1
fi

# =======================
# Arrays
# =======================
EC2_INSTANCES=()
S3_BUCKETS=()

# =======================
# Functions
# =======================
create_ec2_instance() {
  echo "Creating EC2 instance of type $INSTANCE_TYPE..."
  INSTANCE_ID=$(aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type $INSTANCE_TYPE \
    --key-name $KEY_NAME \
    --region $AWS_REGION \
    --query "Instances[0].InstanceId" \
    --output text 2>/dev/null)

  if [ $? -ne 0 ] || [ -z "$INSTANCE_ID" ]; then
    echo "Failed to create EC2 instance."
    exit 1
  fi

  echo "EC2 instance created: $INSTANCE_ID"
  EC2_INSTANCES+=("$INSTANCE_ID")
}

create_s3_bucket() {
  echo "Creating S3 bucket: $BUCKET_NAME"

  if [ "$AWS_REGION" == "us-east-1" ]; then
    aws s3api create-bucket \
      --bucket "$BUCKET_NAME" \
      --region "$AWS_REGION" 2>/dev/null
  else
    aws s3api create-bucket \
      --bucket "$BUCKET_NAME" \
      --region "$AWS_REGION" \
      --create-bucket-configuration LocationConstraint="$AWS_REGION" 2>/dev/null
  fi

  if [ $? -ne 0 ]; then
    echo "Failed to create S3 bucket. It may already exist or name is invalid."
    exit 1
  fi

  echo "S3 bucket created: $BUCKET_NAME"
  S3_BUCKETS+=("$BUCKET_NAME")
}

verify_deployment() {
  echo "Verifying resources"
  echo "EC2 Instances: ${EC2_INSTANCES[*]}"
  echo "S3 Buckets: ${S3_BUCKETS[*]}"
}

# =======================
# Script Execution
# =======================
echo "Starting AWS deployment script"

create_ec2_instance
create_s3_bucket
verify_deployment

echo "Deployment completed successfully!"
