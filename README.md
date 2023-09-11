[Link to EC2-Exercises-#2](#EC2-Exercises-#2)
[Link to Installation](#installation)
[Link to Usage](#usage)


## **EC2 - Exercises - #1**

**Exercise 1: Create a Single EC2 Instance**

- Create a Terraform configuration to launch a single EC2 instance with a specified instance type, AMI, and key pair.

  

**Exercise 2: Use Variables for Instance Type**

- Modify the previous configuration to use a Terraform variable for the instance type. Allow users to specify the instance type when running `terraform apply`.

  

**Exercise 3: Launch Multiple EC2 Instances**

- Extend the configuration to launch multiple EC2 instances with the same configuration. Use a variable to control the count of instances.

  

**Exercise 4: Define AMI as a Variable**

- Create a Terraform variable for the AMI ID and allow users to specify the AMI when launching instances.

  

**Exercise 5: Use a List Variable for Security Groups**

- Modify the configuration to use a list variable for specifying security groups. Allow users to specify one or more security groups when launching instances.

  

## **EC2-Exercises-#2**

  

**Exercise 6: Customize User Data**

- Use a variable to specify user data scripts that should be executed when launching EC2 instances. Allow users to provide custom scripts.

  

**Exercise 7: Define Instance Tags**

- Implement instance tagging using variable-based tag definitions. Allow users to specify tags for their EC2 instances.

  

**Exercise 8: Select Availability Zone**

- Create a variable for specifying the availability zone in which the EC2 instances should be launched. Provide a default value.

  

**Exercise 9: Allow SSH Key Pair Selection**

- Use a variable to allow users to specify the SSH key pair to use when launching EC2 instances. Provide a default key pair.

  

**Exercise 10: Implement Conditional Logic**

- Add conditional logic to your Terraform configuration based on variables. For example, you could conditionally create additional resources or modify instance attributes based on user-provided variables.
