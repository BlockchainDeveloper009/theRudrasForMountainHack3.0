const hre = require("hardhat");
const contractJson = require("../artifacts/contracts/ElectionPromiseTracker.sol/ElectionPromiseTracker.json");

const abi = contractJson.abi;

async function main() {
    console.log('------start---');
    console.log(abi);
    
    const alchemy = new hre.ethers.providers.AlchemyProvider(
        'maticmum',
        process.env.API_KEY
    );

    const userWallet = new hre.ethers.Wallet(process.env.PRIVATE_KEY,alchemy);

    const Greeter = new hre.ethers.Contract(process.env.CONTRACT_ADDRESS_ElectionPromiseTracker1,
        abi,
        userWallet
    )
    console.log('---------');
    console.log(Greeter.getAllCandidatesMap())
    console.log('===========')
}



