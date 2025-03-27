# Blockchain Todo List Application

A decentralized Todo List application built with Ethereum blockchain, Solidity smart contracts, and React.js. This application demonstrates the use of blockchain technology for maintaining an immutable, decentralized task management system.

## Complete Setup Guide (A to Z)

### Step 1: Environment Setup

1. Install Node.js and npm:
   ```bash
   # Verify installation
   node --version  # Should be v14.0.0 or later
   npm --version
   ```

2. Install required global packages:
   ```bash
   npm install -g truffle
   npm install -g ganache-cli
   ```

3. Clone and prepare the project:
   ```bash
   git clone <repository-url>
   cd todo-blockchain
   ```

### Step 2: Project Dependencies

1. Install backend dependencies:
   ```bash
   # In the root directory
   npm install
   npm install fs-extra path --save-dev
   ```

2. Install frontend dependencies:
   ```bash
   cd client
   npm install
   cd ..
   ```

### Step 3: Blockchain Setup

1. Start the local blockchain:
   ```bash
   # Open a new terminal and run
   ganache-cli
   ```
   - Keep this terminal running
   - Save the mnemonic phrase displayed
   - Note some private keys for later use

2. Configure MetaMask:
   - Install MetaMask browser extension
   - Click the network dropdown
   - Select "Add Network"
   - Fill in these details:
     ```
     Network Name: Ganache Local
     New RPC URL: http://127.0.0.1:8545
     Chain ID: 1337
     Currency Symbol: ETH
     ```
   - Import account from Ganache:
     1. Copy a private key from ganache-cli terminal
     2. In MetaMask: Click account circle → Import Account
     3. Paste private key and click "Import"

### Step 4: Smart Contract Deployment

1. Compile the smart contract:
   ```bash
   # In the project root directory
   truffle compile
   ```

2. Deploy the contract:
   ```bash
   truffle migrate --reset --network development
   ```

3. Copy contract artifacts to client:
   ```bash
   node scripts/copy-contracts.js
   ```

### Step 5: Launch Application

1. Start the React development server:
   ```bash
   cd client
   npm start
   ```

2. Access the application:
   - Open browser to http://localhost:3000
   - MetaMask will prompt to connect - click "Connect"
   - Your Ethereum address should appear at the top

### Step 6: Using the Application

1. Create a new task:
   - Type task description in input field
   - Click "Add Task" or press Enter
   - Confirm transaction in MetaMask popup
   - Wait for blockchain confirmation

2. Complete a task:
   - Click checkbox next to task
   - Confirm transaction in MetaMask
   - Task will be marked as completed

3. Delete a task:
   - Click "Delete" button next to task
   - Confirm transaction in MetaMask
   - Task will be removed from list

## Verification Steps

After each major step, verify:

### After Ganache Launch:
- Terminal shows 10 accounts with ETH
- RPC server running on http://127.0.0.1:8545

### After MetaMask Setup:
- Network shows "Ganache Local"
- Account shows ETH balance
- Status shows "Connected"

### After Contract Deployment:
- No compilation errors
- Migration successful
- Contract address is displayed in console
- ABI files present in client/src/contracts/

### After Application Launch:
- React server running on http://localhost:3000
- Web interface loads without errors
- MetaMask connected
- Account address visible

## Troubleshooting Common Issues

### 1. Ganache Connection Issues
```bash
# Verify Ganache is running
curl http://127.0.0.1:8545

# If no response, restart Ganache:
ganache-cli
```

### 2. Contract Deployment Failures
```bash
# Clean and redeploy
rm -rf build/
truffle compile
truffle migrate --reset --network development
node scripts/copy-contracts.js
```

### 3. React Application Issues
```bash
# If dependencies are missing
cd client
npm install

# If contract artifacts are missing
cd ..
node scripts/copy-contracts.js

# Clear React cache
cd client
npm run clean
npm start
```

### 4. MetaMask Issues
- Reset account:
  1. Settings → Advanced
  2. Reset Account
- Reconnect to network:
  1. Click network dropdown
  2. Select "Ganache Local"
  3. Refresh page

## Directory Structure
```
todo-blockchain/
├── client/                 # React frontend
│   ├── src/               
│   │   ├── contracts/     # Contract ABIs
│   │   ├── App.js         # Main React component
│   │   └── App.css        # Styles
├── contracts/             
│   └── TodoList.sol       # Smart contract
├── migrations/            
│   ├── 1_initial_migration.js
│   └── 2_deploy_contracts.js
├── scripts/
│   └── copy-contracts.js  # Contract artifact copy script
└── truffle-config.js      # Truffle configuration
```

## Command Quick Reference

```bash
# Start blockchain
ganache-cli

# Deploy contract
truffle migrate --reset

# Start frontend
cd client && npm start

# Copy contract artifacts
node scripts/copy-contracts.js
```

## Security Notes

1. Never share or commit:
   - Private keys
   - Mnemonic phrases
   - MetaMask credentials

2. Always verify:
   - Contract addresses
   - Transaction recipients
   - Gas fees before confirming

## Support

If you encounter issues:
1. Check the troubleshooting section
2. Verify all steps were completed
3. Review console logs
4. Ensure all dependencies are installed

## License

This project is licensed under the MIT License.
