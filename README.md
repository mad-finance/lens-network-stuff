# Lens Network Stuff

Includes various utilities for interacting with Lens Network for Echo Fi.

Requires [foundry-zksync](https://docs.zksync.io/build/tooling/foundry/overview) to run.

## Deployments

### Lens Sandbox

Test Token: `0xf8a82068870e9488bf641ec4C1BDfd24A11D0a2c`

Test Token 2: `0xe07C87D9B4B0622383265dB460df7D8829fd90c0`

Test Token 3: `0x59A82594d4b72c1AE0AC9c721201A3B7e6AF8062`

## Foundry

**Foundry is a blazing fast, portable and modular toolkit for Ethereum application development written in Rust.**

Foundry consists of:

- **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
- **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
- **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
- **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>

# deploy token
forge script script/Token.s.sol:Deploy --rpc-url https://sepolia.rpc.lens.dev -vvvv --zksync --legacy

# mint token
forge script script/Token.s.sol:Mint --rpc-url https://sepolia.rpc.lens.dev -vvvv --zksync --legacy
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
