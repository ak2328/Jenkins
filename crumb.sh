crumb=$(curl -u "jenkins:1234" -s 'http://localhost:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
#curl -u "jenkins:1234" -H "$crumb" -X POST http://localhost:8080/job/remote-project/build?delay=0sec
#curl -u "jenkins:1234" -H "$crumb" -X POST  http://localhost:8080/job/BACKUP-TO-AWS/buildWithParameters?DB_HOSTNAME=db&DB_NAME=testdb&AWS_BUCKET_NAME=jenk-test-1
#curl -u "jenkins:1234" -H "$crumb" -X POST  http://localhost:8080/job/Ansible-User-DB/buildWithParameters?AGE=25
curl -u "jenkins:1234" -H "$crumb" -X POST  http://localhost:8080/job/job-DSL/build?delay=0sec