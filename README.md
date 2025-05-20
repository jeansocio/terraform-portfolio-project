🌐 Portfolio Website Deployment (Terraform on AWS)
📌 Project Overview
This project involves deploying a Next.js portfolio website for James Smith, a freelance web designer, using Terraform to provision and manage AWS infrastructure. The goal is to create a scalable, cost-effective, and highly available hosting solution with fast global content delivery.

👤 Client Overview
Name: James Smith

Profession: Freelance Web Designer

Need: An online portfolio to showcase his work and attract potential clients.

🎯 Objectives
✅ Host a static Next.js website using Amazon S3

✅ Distribute content globally using Amazon CloudFront

✅ Ensure high availability, performance, and low cost

✅ Use Infrastructure as Code (IaC) with Terraform

✅ Deploy and version control all code on GitHub

🏗️ Architecture Overview
Frontend: Static files built from a Next.js app

Storage: Amazon S3 bucket for static website hosting

Content Delivery: Amazon CloudFront (CDN)

Infrastructure: Managed using Terraform

DNS (optional): Route 53 (not implemented unless required)

User → CloudFront → S3 (Next.js build files)
🧱 Tech Stack
Next.js: React-based framework (for building the portfolio)

Terraform: Infrastructure automation

AWS S3: Static website hosting

AWS CloudFront: Global content delivery (CDN)

Git & GitHub: Version control and collaboration

🛠️ Prerequisites
Terraform installed (>= 1.0)

AWS CLI configured

Git installed

Node.js and npm (for building the Next.js site)

A valid AWS account

🚀 Deployment Steps
1. 🔁 Clone the Project Repository

git clone https://github.com/jeansocio/portfolio-website-deployment(terraform-on-aws).git
cd james-portfolio-terraform
2. 🌍 Build the Next.js Project
bash
Copy
Edit
cd nextjs-blog
npm install
npm run build
Copy the contents of the out/ folder into your deployment folder if you're using next export.

3. 📦 Upload Build Files to S3
Terraform will create the bucket, and you can upload files manually or automate it using AWS CLI.

4. 📄 Set Your Variables
Edit the terraform.tfvars file:

vpc_cidr      = "10.0.0.0/16"
subnet_cidr   = ["10.0.1.0/24", "10.0.2.0/24"]
subnet_names  = ["subnet-1", "subnet-2"]
5. 🧱 Initialize Terraform

terraform init
6. 📋 Plan the Deployment

terraform plan
7. 🚀 Apply the Configuration

terraform apply
📦 Project Structure
.
├── modules/
│   └── vpc/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── nextjs-blog/
│   └── (Next.js app files)
├── main.tf
├── variables.tf
├── terraform.tfvars
└── README.md

🧠 Key Concepts
Static Site Hosting: Using S3 to serve the HTML/CSS/JS files built by Next.js

CDN with CloudFront: Faster delivery to global users

IaC with Terraform: Repeatable, version-controlled AWS setup

Scalability: Easily handles more traffic as James’s popularity grows

Cost-Effective: Pay-as-you-go with AWS; no running EC2 servers

🏁 Final Outcome
By completing this project, you've:

✅ Deployed a portfolio using Next.js

✅ Provisioned AWS infrastructure using Terraform

✅ Configured global content delivery with CloudFront

✅ Followed IaC best practices

