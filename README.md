\# AWS Secure S3 Infrastructure with Terraform



This project provisions and manages a secure Amazon S3 bucket using Terraform.



The project demonstrates practical AWS cloud infrastructure concepts including:



\- S3 versioning

\- Server-side encryption

\- Public access protection

\- Object ownership controls

\- Lifecycle management

\- Resource tagging

\- Infrastructure as Code using Terraform

\- Git and GitHub feature branch workflow



\## Architecture



!\[AWS Secure S3 Terraform Architecture](architecture-diagram.png)



\## Project Overview



The goal of this project is to demonstrate how AWS S3 infrastructure can be securely provisioned and managed using Terraform.



Terraform is used to create and configure the S3 bucket and its supporting security and lifecycle configurations.



The infrastructure is divided into multiple Terraform files to keep the configuration organized and easier to maintain.



\## AWS Services



\### Amazon S3



Amazon S3 provides the object storage used by this project.



The bucket is configured with:



\- Versioning

\- Server-side encryption

\- Public access blocking

\- Bucket ownership controls

\- Lifecycle management

\- Resource tags

