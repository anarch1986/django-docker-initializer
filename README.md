# Django Docker Initializer

If you want to develop Django projects with Docker but don't want to install Python 3 on your computer, you can use this initializer. It will create a standard Django project.

### Prerequirements
Installed and running **Docker** desktop application or devtool

### How to use it:
1. Prepare your requirements.txt file in the same folder as the Dockerfile.
2. Replace every instance of "project_name" with your actual project's name in the Dockerfile.
3. Replace every instance of "app_name" with your actual app's name in the Dockerfile.
4. Open a Terminal in the same folder as the Dockerfile.
5. Run the following command in the Terminal: **"docker build -t project-name ."**. Replace "project-name" whit your actual project's name. This will create your Docker image for the project.
6. Then run this command: **"docker run --name project-name -d project-name"**. This will starts up your Django project in a container.
7. Finally run this command: **"docker cp project-name:/app/. ."**. This will copy all Django files from the container into the same folder as the Dockerfile.
8. You can safely stop and remove the created container, the image and even the Dockerfile.