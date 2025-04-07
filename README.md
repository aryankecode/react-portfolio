React Portfolio - Assignment 14
Description
This is a portfolio website showcasing the work and skills of Aryan Desai. It includes details about my projects, work timeline, technical skills, and services, built using React and Dockerized for deployment. The project is integrated with a CI/CD pipeline to automate the build, test, and deployment process.

Features
Display of work timeline and technical skills.

Dockerized React application for easy deployment.

CI/CD pipeline using GitHub Actions to automatically deploy the application whenever changes are pushed to the repository.

Getting Started
Prerequisites
Before you begin, make sure you have the following installed:

Node.js (Recommended version: 16 or higher)

Docker

Git

1. Clone the Repository
Clone this repository to your local machine using the following command:

bash
Copy
git clone https://github.com/aryankecode/react-portfolio.git
2. Install Dependencies
Navigate to the project directory:

bash
Copy
cd react-portfolio
Install the necessary dependencies using npm:

bash
Copy
npm install
3. Run Locally (Development Mode)
To run the app locally in development mode, use the following command:

bash
Copy
npm start
The app will be available at http://localhost:3000 in your browser.

4. Build for Production
To build the app for production, use the following command:

bash
Copy
npm run build
This will create an optimized build of the app in the build/ directory.

Docker Setup
1. Build Docker Image
To build the Docker image for the React app, use the following command:

bash
Copy
docker build -t lastName_firstName_coding_assignment14 .
This will create a Docker image named lastName_firstName_coding_assignment14.

2. Run Docker Container
Once the image is built, you can run the container using:

bash
Copy
docker run -p 5575:5575 lastName_firstName_coding_assignment14
This will start the React app inside a Docker container, and you can access it at http://localhost:5575.

CI/CD Pipeline
GitHub Actions
This project is integrated with GitHub Actions to automate the build, test, and deployment processes. The pipeline runs every time changes are pushed to the main branch of the repository.

How the CI/CD Pipeline Works:
Build: The pipeline installs dependencies, builds the React app, and creates a Docker image.

Deploy: The pipeline runs the Docker container to ensure that the app is deployed and accessible.

Triggering the Pipeline
Whenever you push changes to the main branch of the repository, the pipeline will trigger automatically and:

Build the Docker image.

Test the production build.

Deploy the app using the settings defined in the .github/workflows/ci-cd.yml file.

How to Deploy the App (CI/CD)
The CI/CD pipeline is configured using GitHub Actions. Whenever you push to the main branch, the following steps occur:

Code Checkout: The workflow checks out the code from the repository.

Node Setup: It installs Node.js dependencies and builds the React app.

Docker Build: The workflow builds a Docker image for the production-ready React app.

Docker Run: The built Docker container is run, making the app available at the designated port (5575).

Troubleshooting
If you encounter issues with Docker, ensure that Docker is running on your machine.

Make sure that all dependencies are installed correctly. You can run npm install again if you encounter missing packages.

Additional Notes
The app is fully responsive and works well on all screen sizes.

For performance optimization, lazy loading, code splitting, and image optimization techniques can be added later.

Ensure you update the README.md file with any new features or changes.

License
This project is licensed under the MIT License - see the LICENSE file for details.