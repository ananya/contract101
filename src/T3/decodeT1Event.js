import { ethers } from "ethers";

// ABI of the event
const abi = ["event MessageChanged(string oldMessage, string newMessage)"];

// Log data from your example
const log = {
  address: "0xdc64a140aa3e981100a9beca4e685f962f0cf6c9",
  topics: [
    "0x5f39fb9255c1b6ac340f9d398daf534d7efd9290c2f50c92353a6c16ecae84ba",
  ],
  data: "0x00000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000000d48656c6c6f2c20576f726c642100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001248656c6c6f2066726f6d20466f756e6472790000000000000000000000000000",
};

// Create an interface to decode the log
const iface = new ethers.Interface(abi);

// Decode the log
const decodedLog = iface.parseLog(log);

console.log(`Old Message: ${decodedLog.args.oldMessage}`);
console.log(`New Message: ${decodedLog.args.newMessage}`);
