
> TechNova Flask App

This is a simple Dockerized Flask application built as part of the **TechNova DevOps Internship Project** by a 5-member team.

The app serves a basic "Hello, TechNova!" page and is integrated with DockerHub and GitHub, and will be deployed via Jenkins CI/CD.

> Project Structure

```
technova\_flask\_app/
├── app.py 
├── requirements.txt 
├── Dockerfile 
├── Jenkinsfile 
├── .dockerignore 
├── .gitignore 
└── README.md 

````

> Tech Stack

- **Python 3.9**
- **Flask** micro web framework
- **Docker** for containerization
- **GitHub** for version control
- **DockerHub** for image registry
- **Jenkins** for CI/CD pipeline


>Live Preview
>> Coming soon! Jenkins deployment to EC2 is in progress.


>> Running Locally

>>> 1. Clone the repository  
git clone https://github.com/manasvi-kakar/technova_flask_app.git
cd technova_flask_app

>>> 2. Install dependencies
pip install -r requirements.txt


>>> 3. Run the Flask app
python app.py

Then open: [http://127.0.0.1:5000](http://127.0.0.1:5000)


> Running with Docker

>>> 1. Build the Docker image
docker build -t technova_app .


>>> 2. Run the container
docker run -p 5000:5000 technova_app


Then go to: [http://localhost:5000](http://localhost:5000)



>> DockerHub Image

Pull the image directly from DockerHub:

docker pull manasvikakar/technova_app:latest

🔗 [DockerHub Repo](https://hub.docker.com/r/manasvikakar/technova_app)

>> CI/CD Pipeline (Jenkins)
This project is set up with a full CI/CD pipeline using Jenkins, including:

> Build on every main branch push

> Build Docker image from Dockerfile

> Push to DockerHub

> Deploy to cloud server 

Jenkinsfile is included in the root directory and defines all stages.


