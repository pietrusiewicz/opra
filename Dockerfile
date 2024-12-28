# Bazowy obraz Debian
FROM debian:bullseye

# Instalacja zależności
RUN apt update && apt install -y \
    gnupg \
    software-properties-common \
    wget \
    curl \
    x11-apps \
	dbus libdbus-1-3 \
    && rm -rf /var/lib/apt/lists/*

# Dodanie repozytorium Opery
RUN wget -qO- https://deb.opera.com/archive.key | apt-key add - \
    && add-apt-repository 'deb https://deb.opera.com/opera-stable/ stable non-free' \
    && apt update --fix-missing

# Instalacja Opery
RUN apt install -y opera-stable

# Ustawienia uruchamiania Opery
CMD ["opera", "--no-sandbox", "--disable-gpu"]
