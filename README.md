# DevOps Intern Final Assessment
Name: Kashif Hussain
Date: 2026-08-16
Project: DevOps pipeline demo
## Nomad Deployment
To run this job using Nomad:
1. Ensure your Docker image is built locally: `docker build -t hello-devops .`
2. Run the job: `nomad job run nomad/hello.nomad`
3. Check status: `nomad job status hello-devops`
