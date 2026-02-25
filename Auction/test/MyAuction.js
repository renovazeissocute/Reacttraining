const { expect } = require("chai");
const { ethers } = require("hardhat");
const Product = require("../ignition/modules/product.json");

describe("MyAuction", function () {
  let MyAuction;
  let auction;
  let owner;
  let bidders;
 const sampleBidAmounts = [1,1.2, 1.5, 1.9, 2.1];
 const sampleBidAmountsWei = sampleBidAmounts.map(amount => ethers.parseEther(amount.toString()));

 beforeEach(async () => {
  MyAuction = await ethers.getContractFactory("MyAuction");
  auction = await MyAuction.deploy(Product.Brand, Product.SerialNumber, Product.Duration);
  [owner, ...bidders] = await ethers.getSigners();
 });

 it("should return the information of the product", async () => {
  const [returnedBrand, returnedSerialNumber] = await auction.getProductInfo();
  expect(returnedBrand).to.equal(Product.Brand);
  expect(returnedSerialNumber).to.equal(Product.SerialNumber);
 });
});
