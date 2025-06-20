require("@nomicfoundation/hardhat-toolbox");

module.exports = {
  solidity: "0.8.20",
  networks: {
    ganache: {
      url: "http://127.0.0.1:7545",
      accounts: ["26751457f9b82689a1799cd3d03e20299ffec6f17eca59a2c0231a0bd70b9596"]
    }
  }
};
