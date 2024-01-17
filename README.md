# Assignment Solution
To access the application, here is the URL https://d32ydw3gl85ep.cloudfront.net
### for assessment solution refer: "solution" directory of the repo
## Techologies used:
- AWS Services: BeanStalk, CloudFront.
- java JDK
- Maven
- Terraform
- git SCM


As per the requirements, followed the below:
- Created a free tier AWS account. 
- To deploy build and locally run the application  
```sh
mvn clean spring-boot:run
```
- validate application at http://localhost:8080 
- Ran the test cases 
```sh
mvn clean test
```
- To create a jar file
```sh
mvn package
```

## Steps followed for the IAC implementation:

- Created an role for terraform purpose
- Configured credetials to provision infra.
- uploaded the jar file into S3 Bucket
- Written the code to deploy the infra
- To initialise the terrraform, change the dir to terraform folder, then run the below
```sh
terrafrom init
```
- To run the plan
```sh
terrafrom plan -var-file="supermarket.tfvars"
```
- To apply the changes
```sh
terrafrom apply -var-file="supermarket.tfvars" -auto-approve
```
