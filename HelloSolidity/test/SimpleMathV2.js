const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("SimpleMathV2", function () {

    let SimpleMathV2;
    let SimpleMath;

    beforeEach(async () => {
        SimpleMathV2 = await ethers.getContractFactory("SimpleMathV2");
        SimpleMath = await SimpleMathV2.deploy();
    });

    it("should set the new value of x", async() => {
        const newX = 10;
        const tx = await SimpleMath.setX(newX);
        await tx.wait();
        const x = await SimpleMath.x();
        expect(x).to.equal(newX);

    });
    
    it("should add two numbers together", async() => {
        expect(await SimpleMath.add(5, 6)).to.be.equal(11);
    });

    it("should subtract two numbers", async() => {
         expect(await SimpleMath.subtract(6, 5)).to.be.equal(1);
    });

    it("should multiply two numbers", async() => {
         expect(await SimpleMath.multiply(5, 6)).to.be.equal(30);
    });

    it("should divide the number by another number", async() => {
         expect(await SimpleMath.divide(30, 6)).to.be.equal(5);
    });
    it("should square a number", async() => {
         expect(await SimpleMath.square(5)).to.be.equal(25);
    });
});


