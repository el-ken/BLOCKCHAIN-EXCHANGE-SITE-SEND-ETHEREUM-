
const main = async () => {


  const Transactions = await hre.ethers.getContractFactory('Transactions'); //this is like a function factory or a class that is going to generate instances of that specific contract;
  const transactions = await Transactions.deploy();

  await transactions.deployed();

 

  console.log("Transactions deployed to:", transactions.address);
  //0xEC690c33595215F25d436EE0310916523256BA17
  
  
}


const runMain = async () =>{
  try {
    await main();
    process.exit(0);
  } catch (error) {
    console.error(error);
    process.exit(1);
  }
}

runMain();