<!DOCTYPE html>
<html lang="pl">

<body>
    <h1>Opera Docker Setup</h1>
    <p>Follow the steps below to set up Opera browser in a Docker container.</p>
    <h2>Step 0: Start the Docker Container</h2>
    <p>First, run the following command to start the Docker container:</p>
    <pre><code>
        docker build -t opera-container .
    </code></pre>
    <pre><code>
docker run -d --name opera-container --rm --privileged -e DISPLAY=host.docker.internal:0 debian:bullseye sleep infinity
docker exec -it opera-container bash
    </code></pre>
    <h2>Step 1: Install Required Packages</h2>
    <p>Update the package list and install the necessary packages:</p>
    <pre><code>
apt update
apt install -y software-properties-common
    </code></pre>
    <h2>Step 2: Add Opera Repository</h2>
    <p>Add the Opera repository and its GPG key:</p>
    <pre><code>
wget -qO- https://deb.opera.com/archive.key | apt-key add -
add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'
    </code></pre>
    <h2>Step 3: Install Opera Browser</h2>
    <p>Update the package list again and install Opera:</p>
    <pre><code>
apt update
apt install -y opera-stable
    </code></pre>
    <h2>Step 4: Launch Opera Browser</h2>
    <p>Now, you can launch Opera without the sandbox for better compatibility:</p>
    <pre><code>
opera --no-sandbox
    </code></pre>
    <h2>Build and Run Docker Image (Optional)</h2>
    <p>If you want to build and run a custom Docker image, follow the steps below:</p>
    <h3>Step 1: Build the Docker Image</h3>
    <p>Build your custom Docker image using the following command:</p>
    <pre><code>
docker build -t opera-docker .
    </code></pre>
    <h3>Step 2: Run the Docker Container with the Custom Image</h3>
    <p>Run the container using your custom image:</p>
    <pre><code>
docker run -d --name opera-container --rm --privileged -e DISPLAY=host.docker.internal:0 opera-docker
    </code></pre>

</body>
</html>
