# Foundry Simple Storage

A beginner-friendly Solidity project built as part of the **Cyfrin Updraft Solidity Smart Contract Developer** course. This repository demonstrates core Solidity fundamentals.

The project includes three simple contracts:
- `SimpleStorage` – Stores and retrieves a single `uint256` favorite number.
- `StorageFactory` – Deploys instances of `SimpleStorage` and interacts with them (demonstrates contract-to-contract calls).
- `AddFiveStorage` - Inherits from SimpleStorage and simply overrides the store method to add 5 to whatever number the user sets.

### Testnet Deployment (Sepolia)

Live Contract (Sepolia):
View on Etherscan 0x9F95B998F3360595B51854E5a5bB02Fd67842EB7