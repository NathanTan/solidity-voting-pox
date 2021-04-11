Using the truffle console to interact with the smart contract

```
Ex:
$ truffle console

> Election.deployed().then(function(instance) { app = instance })
> app
> app.address // Get smart contract address
> app.candidate() // Get candidate value
```

// Reads on the blockchain are free but writes cost gas (like deployments)