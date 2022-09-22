require("@nomicfoundation/hardhat-toolbox");
require("dotenv").config({ path: ".env" });

//const ALCHEMY_API_KEY_URL = process.env.ALCHEMY_API_KEY_URL;
//const RINKEBY_PRIVATE_KEY = process.env.MUMBAI_PRIVATE_KEY;
const ALCHEMY_API_KEY_URL='https://polygon-mumbai.g.alchemy.com/v2/3b2s_ycI-VRJbbV-stREOv_x1w3XC5LQ';
const RINKEBY_PRIVATE_KEY='0xe62c67b5957d55905f510f374e16465d480287b5f87364f7f30330699e927648';

console.log(`-->${ALCHEMY_API_KEY_URL}`);
console.log(`-->${RINKEBY_PRIVATE_KEY}`);
module.exports = {
  solidity: "0.8.9",
  networks: {
    rinkeby: {
      url: ALCHEMY_API_KEY_URL,
      accounts: [RINKEBY_PRIVATE_KEY],
    },
  },
};