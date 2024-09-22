import { ethers } from "hardhat";

async function main() {
  const GameLicenseManager = await ethers.getContractFactory("GameLicenseManager");
  const gameLicenseManager = await GameLicenseManager.deploy();
  await gameLicenseManager.deployed();
  console.log("GameLicenseManager deployed to:", gameLicenseManager.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
