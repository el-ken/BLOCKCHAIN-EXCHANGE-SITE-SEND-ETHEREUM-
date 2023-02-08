
require("@nomiclabs/hardhat-waffle");

//** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.0",
  networks:{
    goerli:{
      url:'https://eth-goerli.g.alchemy.com/v2/CUt0xpRSLWvGEGx6EfsLFURdv3dmvQQq', 
      accounts: ['fc88f9f9714ab5a9d91085c0bbb8609f7501b3ec07936f38ccc3042d23c516cb'] 
    }
  },
};
