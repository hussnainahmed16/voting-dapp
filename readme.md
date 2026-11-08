# Decentralized Voting dApp (Sepolia Testnet)

A decentralized single-choice polling application where users cast votes recorded permanently on the Ethereum Sepolia testnet.

## Contract Details
- **Network:** Sepolia Testnet
- **Contract Address:** 0xC7144b5a693c3e3Cca22FD824DbCD146F4807581

## Functions
1. `vote(uint256 _candidateId)` (Write) — Casts a vote and prevents double voting.
2. `getVotes()` (Read) — Retrieves live vote counts for both candidates.
3. `checkHasVoted(address _voter)` (Read) — Checks whether a wallet has already voted.
4. `resetPoll()` (Write) — Starts a new voting round.

## How to Run
1. Open Remix IDE and paste `SmartContract.sol`.
2. Compile with Solidity `0.8.20`.
3. Under **Deploy & Run Transactions**, choose **Injected Provider - MetaMask** (Sepolia).
4. Deploy the contract and copy its address into `CONTRACT_ADDRESS` in `index.html`.
5. Open `index.html` with VS Code Live Server.
6. Connect MetaMask and test voting and checking results.

## Screenshots
- `deployment.png`: Contract deployed on Sepolia via Remix.
- `metamask_tx.png`: MetaMask confirming gas payment for vote.
- `ui_result.png`: Web page displaying updated vote count and connected wallet.