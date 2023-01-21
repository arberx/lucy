import dotenv from 'dotenv';
import { ethers } from 'hardhat';

dotenv.config();

async function main() {
  const Lucy = await ethers.getContractFactory("LucyXMemorial");
  const lucyDeployed = await Lucy.deploy();

  await lucyDeployed.deployed();

  console.log(`Deployed to ${lucyDeployed.address}`);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
