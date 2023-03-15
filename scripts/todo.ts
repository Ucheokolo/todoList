import { ethers } from "hardhat";

async function main() {
    const todo = await ethers.getContractFactory("TodoList");
    const Todo = await todo.deploy();
    await Todo.deployed();

    console.log(Todo.address);

    // interact with contract
    await Todo.createTodo("You have to take your shower this morning");

    console.log("success");
    

    const task = await Todo.getTask("0");
    console.log(task);

}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});