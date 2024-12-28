<b>OPEN OPERA BROWSER STEP BY STEP</b>
<ol>

<li>
  <ul>
    <li>docker run -d --name opera-container --rm --privileged -e DISPLAY=host.docker.internal:0 debian:bullseye sleep infinity</li>
    <li>docker exec -it opera-container bash</li>
  </ul>
</li>
<li>
  <ul>
<li>apt update</li>
<li>apt install -y software-properties-common</li>
    </ul>
</li>
<li>
<ul>
  <li>wget -qO- https://deb.opera.com/archive.key | apt-key add -</li>
  <li>add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free'</li>
</ul>
</li>
<li>
<ul>
  <li>apt update</li>
  <li>apt install -y opera-stable</li>
</ul>
  </li>
<li>4. opera --no-sandbox</li>
</ol>
<ol><b>USING DOCKERFILE</b>
<li>1.docker build -t opera-docker .</li>
<li>2.docker run -d --name opera-container --rm --privileged -e DISPLAY=host.docker.internal:0 opera-docker</li>
</ol>
