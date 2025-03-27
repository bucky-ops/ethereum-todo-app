const fs = require('fs-extra');
const path = require('path');

const contractsDir = path.join(__dirname, '..', 'build', 'contracts');
const destDir = path.join(__dirname, '..', 'client', 'src', 'contracts');

// Ensure destination directory exists
fs.ensureDirSync(destDir);

// Copy all contract artifacts
fs.copySync(contractsDir, destDir, {
    filter: (src, dest) => {
        return src.endsWith('.json');
    }
});

console.log('Contracts copied to client/src/contracts');
