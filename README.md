# Avalanche-crowdfunding
1. Begin by navigating to your Web3 folder using `cd web3`. Initialize Hardhat by running `npx hardhat`, selecting "`yes`" and opting for `TypeScript` as your language. Accept the default settings by pressing enter. Next, install the necessary dependencies by running:
 `npm install @openzeppelin/contracts dotenv @nomiclabs/hardhat-ethers
 npm install --save-dev hardhat@^2.12.0 @nomicfoundation/hardhat-toolbox@^2.0.0`
2. Install Core, a smart wallet alternative built for Avalanche dApps, and enable testnet mode by opening the Core extension, clicking the hamburger menu on the top left, navigating to "Advanced", and turning on the Testnet Mode. To test transactions, fund your wallet using the Avalanche Faucet available at Avalanche Faucet.

3. In your project, create a `.env` file and specify the `PRIVATE_KEY` environment variable. To get your private key, open the Core extension, navigate to `Security and Privacy`, and click `Show Recovery Phase` After entering your password, copy the recovery phrase. Then, go to Avalanche Wallet, access your wallet using the mnemonic key phrase, and view your C-Chain private key. Copy this private key and paste it into your .env file as `PRIVATE_KEY=your_private_key`.

4. Configure Hardhat by copying the hardhat.config.ts file from the GitHub Gist provided in the instructions and place it in your project directory. Do the same for the deploy.ts script, placing it in the scripts/ folder, and the AvaxGods.sol smart contract, which should go in the contracts/ folder.

# Deploy a subnet 
1. prerequisite: linux/mac on your machine to run Avalanche-CLI (windows is not supported)
2. login to linux/mac account
3. run `avalanche subnet create <SUBNET_NAME>`
4. select require
5. run `avalanche subnet list` : to see list
6. run `avalanche subnet describe <SUBNET_NAME>` : to see detail
7. run `avalanche subnet deploy <SUBNET_NAME>` : to deploy to
   - `localnetwork` : your local machine network
   - `fuji testnet`
   - `maintein`
8. connect to wallet.
