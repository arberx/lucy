import '@nomicfoundation/hardhat-toolbox';

import dotenv from 'dotenv';
import { HardhatUserConfig } from 'hardhat/config';

if (process.env.NODE_ENV !== "production") {
  dotenv.config();
}

const ALCHEMY_GOERLI_API_KEY = process.env.ALCHEMY_GOERLI_API_KEY as string;
const WALLET_PRIVATE_KEY = process.env.WALLET_PRIVATE_KEY as string;
const ALCHEMY_MAINNET_API_KEY = process.env.ALCHEMY_MAINNET_API_KEY as string;

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  networks: {
    hardhat: {
      chainId: 1337, // We set 1337 to make interacting with MetaMask simpler
    },
    goerli: {
      url: `https://eth-goerli.alchemyapi.io/v2/${ALCHEMY_GOERLI_API_KEY}`,
      accounts: [WALLET_PRIVATE_KEY],
    },
    mainnet: {
      url: `https://eth-mainnet.g.alchemy.com/v2/${ALCHEMY_MAINNET_API_KEY}`,
      accounts: [WALLET_PRIVATE_KEY],
    },
  },
};

export default config;
