 cd /var/lib/jenkins/workspace/$JOB_NAME 
 docker image build -t $JOB_NAME:v1.$BUILD_ID
 docker image tag $JOB_NAME:v1.$BUILD_ID darkmatterdocker/$JOB_NAME:v1.$BUILD_ID 
 docker image push darkmatterdocker/$JOB_NAME:v1.$BUILD_ID 
 docker image tag $JOB_NAME:v1.$BUILD_ID darkmatterdocker/#JOB_NAME:latest 
 docker image push darkmatterdocker/$JOB_NAME:latest 
 docker image rmi $JOB_NAME:v1.$BUILD_ID  darkmatterdocker/$JOB_NAME:v1.$BUILD_ID   darkmatterdocker/$JOB_NAME:latest
