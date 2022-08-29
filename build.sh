docker build --platform linux/amd64 -t australianbiocommons/pin_hic:latest-amd64 .
docker build --platform linux/arm64 -t australianbiocommons/pin_hic:latest-arm64 .
docker push australianbiocommons/pin_hic:latest-arm64
docker push australianbiocommons/pin_hic:latest-amd64
docker manifest create australianbiocommons/pin_hic:latest australianbiocommons/pin_hic:latest-amd64 australianbiocommons/pin_hic:latest-arm64
