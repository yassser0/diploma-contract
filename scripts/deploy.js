async function main() {
  const DiplomaRegistry = await ethers.getContractFactory("DiplomaRegistry");
  const contract = await DiplomaRegistry.deploy();
  await contract.waitForDeployment();
  console.log("✅ Contract deployed at:", contract.target);
}

main().catch((error) => {
  console.error("❌ Deployment failed:", error);
  process.exitCode = 1;
});
