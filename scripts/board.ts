import { ethers } from "hardhat";

const main = async () => {
  const colorBoard = await ethers.deployContract("ColorBoard", []);
  const deploy = await colorBoard.waitForDeployment();
  console.log(deploy.target);
};

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
