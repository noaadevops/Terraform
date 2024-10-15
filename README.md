### Prerequisites: Installing Terraform and AWS CLI on Ubuntu

Before you can use Terraform to manage AWS resources, you need to have both **Terraform** and the **AWS CLI** installed on your machine. Below are the steps to install both tools on Ubuntu.


### 1. Install Terraform on Ubuntu

#### Step 1: Update the System
First, make sure your system is up-to-date.

```bash
sudo apt update && sudo apt upgrade -y
```

#### Step 2: Install the HashiCorp GPG Key
You need to add the HashiCorp GPG key to verify the packages.

```bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
```

#### Step 3: Add the Terraform Repository
Next, add the official Terraform repository to your system.

```bash
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
```

#### Step 4: Install Terraform
Now, install Terraform.

```bash
sudo apt update && sudo apt install terraform
```

#### Step 5: Verify the Installation
Check if Terraform was installed correctly.

```bash
terraform --version
```

You should see the version of Terraform that was installed.

---

### 2. Install AWS CLI on Ubuntu

#### Step 1: Update the System
Ensure your system is updated (if you haven’t already done this).

```bash
sudo apt update && sudo apt upgrade -y
```

#### Step 2: Install Unzip (if not already installed)
The AWS CLI comes as a zip file, so you’ll need to have `unzip` installed.

```bash
sudo apt install unzip
```

#### Step 3: Download AWS CLI Version 2
Now, download the latest AWS CLI version from Amazon.

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```

#### Step 4: Unzip the File
Unzip the downloaded file.

```bash
unzip awscliv2.zip
```

#### Step 5: Run the Installer
Run the installation script.

```bash
sudo ./aws/install
```

#### Step 6: Verify the Installation
Check if the AWS CLI was installed correctly.

```bash
aws --version
```

You should see the AWS CLI version.

---

### 3. Configure AWS CLI

Once AWS CLI is installed, configure it with your AWS credentials.

```bash
aws configure
```

You will be prompted to provide:
- **AWS Access Key ID**
- **AWS Secret Access Key**
- **Default region name** (e.g., `us-east-1`)
- **Default output format** (e.g., `json`)

If you don’t have access keys, you can generate them from the **IAM** section of the AWS console.

---

### Summary
1. **Install Terraform**: Add HashiCorp’s repository and install Terraform.
2. **Install AWS CLI**: Download and install AWS CLI, then configure it with your AWS credentials.

After completing these steps, you’ll be ready to use both Terraform and AWS CLI for infrastructure automation!

### Terraform Work Processess / Cycle

### To install terraofm plugins and state lock 
1. terraform init

### To review the resource to be provisioned
2. terraform plan

### To provision or create the resource on AWS
3. terraform apply

### To Destroy servers / resource - clean up process
4. terrafor destroy

### Project , add terraform backend on the remote location , example s3
 - Purpose of adding terraform back end is to safe garde the terraform state file.

