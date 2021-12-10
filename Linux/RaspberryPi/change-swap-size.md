```bash
sudo dphys-swapfile swapoff
```

```bash
sudo nano /etc/dphys-swapfile
```
### Modify th swap file, edit the variable `CONF_SWAPSIZE` to desired swap size

```bash
sudo dphys-swapfile setup
```

```bash
sudo dphys-swapfile swapon
```