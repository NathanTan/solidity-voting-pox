Using the truffle console to interact with the smart contract

```
Ex:
$ truffle console --reset   // If you need to reset the existing data from the blockchain. Data on the blockchain is immutable.

$ truffle console   // For accessing the data


> Election.deployed().then(function(instance) { app = instance })
> app
> app.address   // Get smart contract address
> app.candidate(1)  // Get candidate value

> app.candidates(1).then(function(c) { candidate = c; })    // To inspect a value you need to use a promise
> candidate.name    // Print the name of the candidate 1


```

// Reads on the blockchain are free but writes cost gas (like deployments)