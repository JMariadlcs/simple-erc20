# SimpleToken ERC20

A simple ERC20 token contract built with Foundry and OpenZeppelin.

## Features

- Standard ERC20 token functionality
- Custom `burnWithRate` function that burns 1% of the specified amount
- Initial supply of 1,000,000 tokens minted to the deployer

## Contract Details

- **Name**: SimpleToken
- **Symbol**: SIMPLE
- **Decimals**: 18
- **Initial Supply**: 1,000,000 tokens
- **Burn Rate**: 1% (100 basis points)

## Custom Function

### `burnWithRate(uint256 amount)`
Burns tokens from the sender's balance with a 1% burn rate.
- `amount`: The amount of tokens to process
- Burns 1% of the specified amount
- Requires sufficient balance

## Development

This project uses [Foundry](https://getfoundry.sh/) for development and testing.

### Prerequisites

- [Foundry](https://getfoundry.sh/)

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

### Anvil (Local Blockchain)

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/SimpleToken.s.sol:SimpleTokenScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast (Interact with Contract)

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```

## License

MIT
# simple-erc20
