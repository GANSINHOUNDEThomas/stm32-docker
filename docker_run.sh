docker run -it --privileged \
  --env=LOCAL_USER_ID="$(id -u)" \
  -v ./ws:/root/ws/:rw \
  -v /tmp/.X11-unix:/tmp/.X11-unix:rw \
  -v ./terminator_config:/root/.config/terminator/config \
  -e DISPLAY=$DISPLAY \
  -e NVIDIA_DRIVER_CAPABILITIES=all \
  --network host \
  --device=/dev/dri \
  --device-cgroup-rule='c *:* rmw' \
  -v /dev:/dev:rslave \
  --runtime=nvidia --gpus all \
  --name=stm32-docker stm32-docker-image

