# PyContainer

I created this repository to create a basic flask application, containerize it with Docker, and then run that container image on a Google Kubernetes Engine cluster.

# Below are the steps that I followed to make this happen and get the application accessible using Kubernetes:
* The first thing that I did was create the application and the Dockerfile for it. Once the Dockerfile was good to go, I built the container image.
* After the Dockerfile was create, I built the image and pushed it to the Google Cloud Platform Container Registry.
* Now that the image was stored in the registry, I had to create a cluster with nodes for the container image to run in.
* The cluster and pods were created, next, I created a deployment to manage multiple copies of the application.
* By default, containers running on GKE are not accessible from the internet - so I had to explicitly expose the application.
* To scale the application I had to use the replicas command which creates literal replicas of the application and deploys more of them.
* Lastly, I deployed new versions of the application using GKE's rolling update mechanism.

Above are the steps that I followed while reading an awesome google kubernetes engine doc -- https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app. The only difference is I created the application with Python and the documentation used Go.
