const {ethers} = require("hardhat");

const main = async () => {
  const whiteListContractFactory = await ethers.getContractFactory("Whitelist");
  const whiteListContract = await whiteListContractFactory.deploy(10);
  await whiteListContract.deployed();
  console.log("contract deployed at",whiteListContract.address);
}

const runMain = async()=>{
    try{
       await main();
       process.exit(0);
    }
    catch(error){
        console.log(error);
        process.exit(1);
    }
}

runMain();