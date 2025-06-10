# Flask Hello World Docker Example

This repository demonstrates:
- A minimal Python Flask web server
- Containerizing it with Docker
- Publishing the image to Docker Hub using GitHub Actions

## Files

- `app.py`: Minimal Flask app returning "Hello, world!".
- `requirements.txt`: Declares dependencies.
- `Dockerfile`: Builds a lightweight image.
- `.github/workflows/docker-publish.yml`: CI workflow to build and publish to Docker Hub.

## Usage

### 1. Update Docker Hub Image Name

By default, the workflow pushes to `${{ secrets.DOCKERHUB_USERNAME }}/flask-hello-world:latest`.  
You can change the image/tag name in `.github/workflows/docker-publish.yml`.

### 2. Add GitHub Secrets

Go to your repository Settings → Secrets and variables → Actions and add:

- `DOCKERHUB_USERNAME`: your Docker Hub username
- `DOCKERHUB_TOKEN`: a Docker Hub [access token](https://hub.docker.com/settings/security)

### 3. Trigger the Workflow

Push to the `main` branch or use the "Run workflow" button in the Actions tab.

### 4. Pull and Run the Image

Once published, run your container:

```sh
docker run -p 5000:5000 yourdockerhubusername/flask-hello-world:latest
```

Visit [http://localhost:5000](http://localhost:5000).

---

_This setup serves as a template for publishing any Python app as a public Docker image via GitHub Actions._