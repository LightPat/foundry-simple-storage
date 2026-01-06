# Foundry Simple Storage

A beginner-friendly Solidity project built as part of the **Cyfrin Updraft Solidity Smart Contract Developer** course. This repository demonstrates core Solidity fundamentals using the modern **Foundry** framework.

The project includes two simple contracts:
- `SimpleStorage` – Stores and retrieves a single `uint256` favorite number.
- `StorageFactory` – Deploys instances of `SimpleStorage` and interacts with them (demonstrates contract-to-contract calls).

This serves as my first step into professional Solidity development with Foundry, focusing on clean code, comprehensive testing, local blockchain forking, and testnet deployment.

## Features

- Written in Solidity ^0.8.26
- Full test coverage using Foundry's `forge test`
- Local development with Anvil
- Scripting for automated deployment
- Deployed and verified on Sepolia testnet
- Gas-optimized and secure patterns

## Tech Stack

- **Foundry** (Forge, Anvil, Cast)
- Solidity
- OpenZeppelin (imported as dependency where applicable)

## Project Structure

src/
├── SimpleStorage.sol          # Basic storage contract
├── StorageFactory.sol         # Factory pattern example
test/
├── SimpleStorage.t.sol        # Unit and fuzz tests
script/
├── DeploySimpleStorage.s.sol  # Deployment script
├── Interact.s.sol             # Example interaction script
foundry.toml                   # Foundry configuration


## Quick Start

### Prerequisites
- Git
- Foundry (install via `curl -L https://foundry.paradigm.xyz | bash` then `foundryup`)

### Installation

```bash
git clone https://github.com/LightPat/foundry-simple-storage.git
cd foundry-simple-storage
forge install
```

### Testing

forge test          # Run all tests
forge test -vvv     # Verbose output
forge coverage      # Generate test coverage report

### Local Deployment & Interaction

# Start local Anvil chain
anvil

# In another terminal, deploy
forge script script/DeploySimpleStorage.s.sol --rpc-url http://localhost:8545 --private-key <your-anvil-private-key> --broadcast

# Interact (example: store a number)
cast send <deployed-address> "store(uint256)" 42 --rpc-url http://localhost:8545 --private-key <your-anvil-private-key>

### Testnet Deployment (Sepolia)

1. Add your environment variables in .env:
SEPOLIA_RPC_URL=https://eth-sepolia.g.alchemy.com/v2/your-key
PRIVATE_KEY=0x...
ETHERSCAN_API_KEY=your-etherscan-key

2. Deploy & verify:
forge script script/DeploySimpleStorage.s.sol --rpc-url $SEPOLIA_RPC_URL --private-key $PRIVATE_KEY --broadcast --verify --etherscan-api-key $ETHERSCAN_API_KEY

Live Contract (Sepolia):
View on Etherscan (replace with actual address after deployment)

## Future Improvements (Planned)
- Add extra functionality (e.g., people array with names + favorite numbers)
- Integrate basic frontend (React + ethers.js)
- Upgradeable proxy pattern

### About Me
I'm Patrick Seeman, a Unity C# game developer and data scientist transitioning into Web3. This repo is part of my journey to become a Solidity/smart contract engineer, with a focus on GameFi and secure DeFi protocols.

GitHub: LightPat
LinkedIn: patrick-seeman-5842841a0

Feel free to star ⭐ or fork if you find this helpful!
Built with 🔥 using Foundry in January 2026