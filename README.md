# Pulling
- `docker pull mtjburton/blackcoin-lore-aarch64-linux-gnu`

# Running
- `docker run -d -v /home/mtjburton/.lore/:/data -p 15714:15714 -p 15715:15715 mtjburton/blackcoin-lore-aarch64-linux-gnu`

# Configure
Configure blackcoind settings like RPC credentials on the host in the data directory which is mapped into the container, in the above example `/home/mtjburton/.lore/blackcoin.conf`

# Access
On the host get the container IP and set it as the rpcconnect along with any username and password configured:
- `bitcoin-cli -rpcconnect=172.17.0.1 getbalance`

# Building (Only needed if building custom Blackcoin Lore client)
- copy `blackcoind` into `bin/`
- copy `qemu-aarch64-static` into bin/
- `docker build . -t blackcoin-lore-aarch64-linux-gnu`

# TODO
- Run as non root user inside the container
- Look into using Alpine
