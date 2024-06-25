# cloud-project-test Readme doc

## 1. Test Locally (Optional)

### 1.1 Build your Docker image:

```
docker build --network host -t haiha-cloud-run-app .
```

### 1.2 Run your container:

```
docker run -p 8080:8080 haiha-cloud-run-app
```

### 1.3 Access your app at `http://localhost:8080` to see if it's running correctly

## 2. Push Your Container to Google Container Registry

### 2.1 Enable the Cloud Build and Cloud Run APIs for your GCP project

#### 2.1.1 Authenticate gcloud:

```
gcloud auth login
```

#### 2.1.2 Set your GCP project:

```
gcloud config set project YOUR_PROJECT_ID
```

### 2.2 Build your container image using Cloud Build and Deploy to Cloud Run

#### 2.2.1 Method 1:

```
gcloud builds submit --config cloudbuild.yaml .
```

#### 2.2.2 Method 2:

##### 2.2.2.1 Submit a build to Cloud Build:

```
gcloud builds submit --tag gcr.io/YOUR_PROJECT_ID/haiha-cloud-run-app
```

##### 2.2.2.2 Deploy to Cloud Run:

```
gcloud run deploy --image gcr.io/YOUR_PROJECT_ID/haiha-cloud-run-app --platform managed --region YOUR_REGION --allow-unauthenticated
```

Replace *YOUR_PROJECT_ID* with your Google Cloud project ID and *YOUR_REGION* with your preferred region.
