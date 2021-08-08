```bash
sudo apt-get install libcap2-bin
```
```bash
sudo setcap cap_net_bind_service=+ep `readlink -f \`which node\``
```
