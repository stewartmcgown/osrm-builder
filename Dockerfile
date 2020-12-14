FROM osrm/osrm-backend

WORKDIR /
RUN apt-get update && apt-get install -y curl unzip
RUN curl https://rclone.org/install.sh | bash

COPY . .
CMD chmod +x ./build.sh && ./build.sh
