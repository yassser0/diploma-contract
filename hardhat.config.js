require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",
  networks: {
    ganache: {
      url: "http://127.0.0.1:7545",
      accounts: ["87fe953335da2350641999493d2d29cff6a70ba17197885c36095c70d213f5aa"]
    }
  }
};
