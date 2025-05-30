sudo apt update
sudo apt install containerd rootlesskit

wget -O /tmp/nerdctl.tar.gz https://github.com/containerd/nerdctl/releases/download/v2.1.2/nerdctl-2.1.2-linux-amd64.tar.gz
sudo tar -zxf /tmp/nerdctl.tar.gz -C /usr/bin

wget -O /tmp/cni-plugins.tgz https://github.com/containernetworking/plugins/releases/download/v1.7.1/cni-plugins-linux-amd64-v1.7.1.tgz
sudo mkdir -p /opt/cni/bin/
sudo tar -zxf /tmp/cni-plugins.tgz -C /opt/cni/bin/

wget -O /tmp/buildkit.tar.gz https://github.com/moby/buildkit/releases/download/v0.22.0/buildkit-v0.22.0.linux-amd64.tar.gz
sudo mkdir -p /tmp/buildkit
sudo tar -zxf /tmp/buildkit.tar.gz -C /tmp/buildkit
sudo mv /tmp/buildkit/bin/* /usr/bin/

containerd-rootless-setuptool.sh install
containerd-rootless-setuptool.sh install-buildkit
