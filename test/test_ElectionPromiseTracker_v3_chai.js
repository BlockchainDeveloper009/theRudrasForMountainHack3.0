const { expect } = require("chai");
const { ethers } = require("hardhat");
const hre = require("hardhat");

describe("ERC721 Upgradeable", function () {
  it("Should deploy an upgradeable ERC721 Contract", async function () {
    const ElectionPromiseTrackerV2 = await ethers.getContractFactory("ElectionPromiseTrackerV2");
    const ElectionPromiseTrackerV3 = await ethers.getContractFactory("ElectionPromiseTrackerV3");

    let proxyContract = await hre.upgrades.deployProxy(ElectionPromiseTrackerV2, {
      kind: "uups",
    });
    const [owner] = await ethers.getSigners();
    const ownerOfToken1 = await proxyContract.ownerOf(1);

    expect(ownerOfToken1).to.equal(owner.address);

    proxyContract = await hre.upgrades.upgradeProxy(proxyContract, ElectionPromiseTrackerV3);
    expect(await proxyContract.test()).to.equal("upgraded");
  });
});