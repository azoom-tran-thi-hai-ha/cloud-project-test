# cloud-project-test Readme doc

## 1. Test Locally (Optional)

### 1.1 Build your Docker image:

```
docker build --network host -t my-cloud-run-app .
```

### 1.2 Run your container:

```
docker run -p 8080:8080 my-node-project
```

### 1.3 Access your app at `http://localhost:8080` to see if it's running correctly.

```
```

## 2. Push Your Container to Google Container Registry

### 2.1 Enable the Cloud Build and Cloud Run APIs for your GCP project.

### 2.2 Authenticate gcloud:

```
gcloud auth login
```

### 2.3 Set your GCP project

```
gcloud config set project YOUR_PROJECT_ID
```

### 2.3 Submit a build to Cloud Build:

```
gcloud builds submit --tag gcr.io/YOUR_PROJECT_ID/my-node-project
```

### 2.4 Deploy to Cloud Run:

```
gcloud run deploy --image gcr.io/YOUR_PROJECT_ID/my-node-project --platform managed
```
