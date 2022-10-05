1. [Update and install Alpine](https://www.alpinelinux.org/downloads/)
2. Create seperate disks for boot (32G) and  data (rest of the disk)
3. `setup-alpine` on `/dev/sda`
4. fdisk the data drive: `fdisk /dev/sdb` -> n -> p -> 1 -> [enter] -> [enter] -> w
5. `mkfs.ext4 /dev/sdb1`
6. edit fstab to automount (get UUID by blkid) `UUID=aa3672d9-772e-403c-abc2-e29c901ab6c4 /media/data ext4 defaults 0 2`
7. install docker or podman
   1. `apk add --update --repositories=http://dl-cdn.alpinelinux.org/alpine/latest-stable/community docker open-rc`
   2. `rc-update add docker boot`
   3. `service docker start`
8. `/portainer.sh`
9. Setup the rest of compose files