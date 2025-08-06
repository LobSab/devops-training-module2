# AWS EC2 INSTANCE AND S3 BUCKET SCRIPT DEPLOYMENT

**DataWise Solutions** is a forward-thinking Data Science Consulting Company that specializes in deploying analytical and machine learning environments to support data-driven decision-making for its clients. Recognizing the need for agility and efficiency in setting up such environments, DataWise has decided to streamline its deployment process on AWS, focusing on simplicity and automation.

**Scenario:**

One of DataWise Solutions' clients, a burgeoning e-commerce startup, is looking to harness the power of data science to analyze customer behavior and enhance their shopping experience. The startup wishes to deploy their data science workspace on AWS, utilizing EC2 instances for computational tasks and S3 buckets for storing their vast datasets of customer interactions.

## Project Implementation
1. Create a working directory for this project
2. Create shell script file inside the project directory and write the script
![ec2-s3-deploy-scrpt](./image/nano-command.PNG)

![nano command](./image/env.PNG)

![ec2-function](./image/ec2-function.PNG)

![s3-function](./image/s3-function.PNG)

![script execution](./image/script-execution.PNG)

3. Change the script file permisssions with this command *chmod +x ec2-s3-deploy.sh*
4. Now run the script with this command *./ec2-s3-deploy.sh*
![ec2-s3-deployment](./image/ec2-s3-deploy-script-success.PNG)

5. Navigate to the AWS EC2 Instance console
![ec2-dashboard](./image/ec2-success.PNG)

6. Navigate to the AWS S3 Bucket console
![s3-bucket](./image/s3-success.PNG)