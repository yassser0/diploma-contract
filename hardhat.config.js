require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",
  networks: {
    ganache: {
      url: "http://127.0.0.1:7545",
      accounts: ["d284995d8871160d90429d3bdbc5bd43a13a91b9f203967c9918f9973ddd2907"]
    }
  }
};
