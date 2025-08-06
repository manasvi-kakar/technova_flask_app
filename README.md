## TechNova Flask App – DevOps Pipeline Project

>  Live Demo: [http://65.2.5.42](http://65.2.5.42)

A Dockerized Flask application deployed to AWS EC2 via Terraform and Jenkins CI/CD.

###  Project Overview

This is a team DevOps project demonstrating the end-to-end CI/CD workflow using:

*  **Flask** for the web application
*  **Docker** for containerization
*  **AWS EC2** for hosting
*  **Terraform** for infrastructure provisioning
*  **Jenkins** for CI/CD automation
*  **DockerHub** for image registry

###  Features

* “Hello, TechNova” Flask homepage
* Dockerfile + .dockerignore configured
* CI/CD pipeline builds and pushes image
* Terraform provisions EC2 and auto-deploys container
* Team-based collaboration on GitHub

---

###  Project Structure

```
technova_flask_app/
│
├── app.py                  
├── requirements.txt        
├── Dockerfile              
├── .dockerignore           
├── Jenkinsfile            
├── README.md
└── technova_terraform/     
    ├── main.tf
    ├── outputs.tf
```

---

###  Deployment Pipeline

1. **GitHub Commit** ➝ triggers Jenkins job
2. **Jenkins** builds Docker image
3. Image is pushed to [DockerHub](https://hub.docker.com/r/manasvikakar/technova_app)
4. **Terraform** is executed via Jenkins to:

   * Provision an EC2 instance
   * Install Docker
   * Run the latest image


### Technologies Used

| Tool          | Purpose                              |
| ------------- | ------------------------------------ |
| **Flask**     | Python Web Framework                 |
| **Docker**    | Containerization                     |
| **DockerHub** | Image Registry                       |
| **Terraform** | Infrastructure as Code (IaC)         |
| **AWS EC2**   | Cloud Hosting                        |
| **Jenkins**   | CI/CD Automation                     |
| **GitHub**    | Version Control & Team Collaboration |


###  How to Run Locally

```bash
git clone https://github.com/manasvi-kakar/technova_flask_app.git
cd technova_flask_app
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python app.py
```

### Live Project

**Hosted URL:**
 [http://65.2.5.42](http://65.2.5.42)


###  Team Members

| Name          | Role                         |
| ------------- | ---------------------------- |
| Manasvi Kakar | DevOps, Terraform, DockerHub |
| Anshika Rai   | CI/CD with Jenkins           |
| Isha Jain     | Jenkins configuration        |
| Sumit         | AWS support                  |
| Lakshay Yadav | Testing & validation         |



### Acknowledgements

Thanks to mentors and Xebia for guidance on this DevOps Internship Project.


###  License

This project is for educational and internship purposes.




