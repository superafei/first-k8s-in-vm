# first-k8s-in-vm

Terraform code to manage my first local Kubernetes (k8s) cluster in a VM workstation.

## Overview

This repository contains Terraform HCL code to set up and manage a local Kubernetes cluster on a VM workstation. The goal is to provide an easy and reproducible way to create a Kubernetes environment for development and testing purposes.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- A VM workstation (e.g., VirtualBox, VMware)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed
- [Helm](https://helm.sh/docs/intro/install/) installed

## Usage

1. Clone the repository:
    ```sh
    git clone https://github.com/your-username/first-k8s-in-vm.git
    cd first-k8s-in-vm
    ```

2. Initialize Terraform:
    ```sh
    terraform init
    ```

3. Review and customize the variables in `variables.tf` as needed.

4. Apply the Terraform configuration:
    ```sh
    terraform apply
    ```

5. Once the infrastructure is provisioned, configure `kubectl` to use the new cluster:
    ```sh
    kubectl config set-context my-cluster --cluster=my-cluster --user=admin
    kubectl config use-context my-cluster
    ```

## Project Structure

- `main.tf`: Main Terraform configuration file.
- `variables.tf`: Variables used in the Terraform configuration.
- `outputs.tf`: Outputs from the Terraform configuration.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
