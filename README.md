# Ethereum Todo App

A decentralized Todo List application built with Ethereum blockchain technology. This project combines Solidity smart contracts with a React.js frontend to create a fully decentralized task management system.

## Features

- Create, complete, and delete tasks on the blockchain
- Persistent storage using Ethereum smart contracts
- Modern React.js frontend with Web3 integration
- MetaMask wallet integration
- Real-time updates

## Tech Stack

- Solidity ^0.8.0
- React.js
- Web3.js
- Truffle
- Ganache (for local development)
- MetaMask

## Prerequisites

- Node.js >= 14.0.0
- Truffle
- Ganache
- MetaMask browser extension

## Quick Start

1. Clone the repository:
```bash
git clone https://github.com/bucky-ops/ethereum-todo-app.git
cd ethereum-todo-app
```

2. Install dependencies:
```bash
npm install
cd client
npm install
```

3. Start local blockchain:
```bash
ganache-cli
```

4. Deploy smart contracts:
```bash
truffle migrate --reset
```

5. Start the frontend:
```bash
cd client
npm start
```

6. Connect MetaMask to your local blockchain (http://127.0.0.1:8545)

## Project Structure

```
ethereum-todo-app/
├── contracts/           # Smart contracts
├── migrations/         # Truffle migration files
├── test/              # Smart contract tests
├── client/            # React frontend
└── truffle-config.js  # Truffle configuration
```

## Testing

```bash
truffle test
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- OpenZeppelin for smart contract best practices
- Truffle Suite for development tools
- React.js community for frontend components
