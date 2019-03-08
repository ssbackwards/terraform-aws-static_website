# terraform-aws-static_website
Simple Terraform module to create a static website hosted on AWS, using S3 buckets and Cloudfront

## Terraform Static Website Module

**Resources created**:
    -two S3 buckets, one for the content (www.example.com), one for redirecting from the naked domain to www (named  example.com)
    -two CloudFront distribution, one per bucket, that also redirect from HTTP to HTTPS
    -two Route53 alias records, one per CloudFront distribution

**Usage**

**Prerequisites**

You have to create a SSL certificate for both domains (www and naked) on AWS. This step can't be automated, due to limitations of the AWS API.

**Follow these instructions**:

  - Access the Certificate Manager on the AWS console
  -  Switch to the us-east-1 (N. Virginia) region.
        **This is _CRUCIAL_, as AWS requires certificates for CloudFront to be issued in this region**
    Click on "Request a certificate"
    Enter as a primary domain name the domain you want with www, for example: www.buildo.io
    Enter the naked domain as an additional domain name, for example buildo.io



**NOTE: warning the order is important, the www domain must come first!**

    Follow the steps for verifying the domain

**Step by Step Instructions:**
- Clone this repo
- Create a terraform.tfvars file and populate it with definitions for variables listed in variables.tf
- Check changes
  ```
     terraform init
     terraform plan
     terraform apply
  ```

All the code in this repo is from the work conducted by @buildo https://github.com/buildo/terraform-aws-website
