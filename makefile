build:
    docker build --platform linux/amd64 -t www.stargaser.co.kr/flutter-test:1.4 -f Dockerfile.deploy .

push:
    docker push www.stargaser.co.kr/flutter-test:1.4

