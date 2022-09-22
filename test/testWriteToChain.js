

// const hre = require("hardhat");
// const contractJson = require("../artifacts/contracts/writeToChain.sol/writeDataToChain.json");

// const abi = contractJson.abi;

// async function main() {
//     console.log('------start---');
//     console.log(abi);
    
//     const alchemy = new hre.ethers.providers.AlchemyProvider(
//         'maticmum',
//         process.env.API_KEY
//     );

//     const userWallet = new hre.ethers.Wallet(process.env.PRIVATE_KEY,alchemy);

//     const Greeter = new hre.ethers.COntract(process.env.CONTRACT_ADDRESS,
//         abi,
//         userWallet
//     )
//     console.log('---------');
//     console.log(Greeter.getCandidateDetails(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4))
//     console.log('===========')
// }
