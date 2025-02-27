## Task 1: Hello World

### To deploy the contract

```
forge create --rpc-url http://127.0.0.1:8545 --private-key <YOUR-PRIVATE-KEY> src/HelloWorld.sol:HelloWorld
```

Output:

```
Deployer: 0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266
Deployed to: 0x5FbDB2315678afecb367f032d93F642f64180aa3
Transaction hash: 0x9fc4c481ce3e0b6d6241fd91d61365de1da70e18ead0aded93a6d1835d509537
```

### To check tx details

`cast tx <TX_HASH> --rpc-url http://127.0.0.1:8545`

### To check the message
<img width="1060" alt="Screenshot 2025-02-27 at 8 22 27 PM" src="https://github.com/user-attachments/assets/baf34c78-0122-46d0-b326-a8fdd91da477" />
