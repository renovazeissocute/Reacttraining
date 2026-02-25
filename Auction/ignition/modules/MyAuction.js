// This setup uses Hardhat Ignition to manage smart contract deployments.
// Learn more about it at https://hardhat.org/ignition

const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

const {Brand, SerialNumber, Duration} = require("./product.json");

module.exports = buildModule("MyAuctionModule", (m) => {
  const brand = m.getParameter("_brand", Brand);
  const serialNumber = m.getParameter("_serialNumber", SerialNumber);
  const duration = m.getParameter("_duration", Duration);
  
  const myAuction = m.contract("MyAuction", [brand, serialNumber, duration]);

  return { myAuction };
});
