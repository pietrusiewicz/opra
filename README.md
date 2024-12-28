<!DOCTYPE html>
<html lang="pl">

<body>
    <h1>Pre-requisites for VcXsrv on Windows</h1>
    <p>To run <strong>VcXsrv</strong> on Windows, the following prerequisites must be met:</p>
    <h2>1. Operating System</h2>
    <p>VcXsrv works on Windows 7 and newer (including Windows 10 and Windows 11). Ensure that your operating system is compatible with these requirements.</p>
    <h2>2. Install WSL (Windows Subsystem for Linux)</h2>
    <p>If you plan to use VcXsrv with Linux applications running in the WSL2 environment, you need to install Windows Subsystem for Linux. Here’s how to do it:</p>
    <pre><code>
# Open PowerShell as administrator and run:
wsl --install
    </code></pre>
    <p>After installation, restart your computer.</p>
    <h2>3. Install VcXsrv</h2>
    <p>You can download VcXsrv from the official project page:</p>
    <ul>
        <li><a href="https://sourceforge.net/projects/vcxsrv/">Download VcXsrv</a></li>
    </ul>
    <p>Download the version suitable for your system (32-bit or 64-bit) and install the program.</p>
    <h2>4. Access to X11 Port</h2>
    <p>VcXsrv exposes the X11 server on a specific port. Ensure that this port is accessible and not blocked by the firewall. You may need to configure the firewall to allow incoming connections on port 6000 (the default X11 port).</p>
    <h2>5. Running VcXsrv</h2>
    <p>After installing VcXsrv, launch the program from the Start menu. Once the program is running, a configuration window will appear where you can adjust settings, such as screen resolution, X11 connection type, and other options.</p>
    <h2>6. Running X11 Applications on Windows</h2>
    <p>To run X11 applications on Windows using VcXsrv, you simply need to connect to the X11 server from a Linux application (e.g., from WSL) or run a graphical application in a Linux environment.</p>
    <p>For example, to run an X11 application from WSL2:</p>
    <h1>Opera Docker Setup</h1>
    <p>Follow the steps below to set up Opera browser in a Docker container.</p>
    <h2>Step 0: Start the Docker Container</h2>
    <p>First, run the following command to start the Docker container:</p>
    <pre><code>docker build -t opera-container .
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
