FactoryContract

Overview:
The "FactoryContract" is a decentralized application (dApp) on the Ethereum blockchain designed to manage a list of friends. Users can access the information from their friends' list and add friends with specified details. By verifying that each friend's address is unique, this smart contract makes sure that there are no duplicate friend entries.

Description:
The FactoryContract smart contract is built using Solidity and allows users to store and manage information about their friends. Each friend has parameters like name, Ethereum address, age, a personal message, and the date they were added. The contract provides functionalities to add friends, check the number of friends, and retrieve the list of all friends.

Frontend Part:
'page.js' file is used for deploying and interacting with the FactoryContract using VS Code along with JavaScript. This approach will utilize web3.js to deploy the contract and interact with it.

Features:
a. Add Friend: Allows users to add a friend's details.
b. Check Uniqueness: Ensures a friend's address is not added more than once.
c. Retrieve Friends Count: Provides the total number of friends added.
d. Retrieve All Friends: Fetches the entire list of friends with their details.

Key Details:
Struct FriendInfo: Holds information about each friend.
Array friends: Stores the list of friends.
Mapping inFriendList: Checks if an address is already added as a friend.

How It Works:
a. Adding a Friend: The addFriend function is called with the friend's details. It checks if the friend's address is already in the list. If not, it adds the friend to the friends array and marks the address in the inFriendList mapping.
b. Retrieving Friends Count: The getFriends function returns the total number of friends added.
c. Retrieving All Friends: The getAllFriends function returns the entire list of friends with their details.

Executing Program:
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

a. Go to the remix IDE online.
b. Create a new file by clicking on the "+" icon in the left-hand sidebar.
c. Ensure the compiler version is set to 0.8.0 or compatible.
d. Click "Compile FactoryContract.sol".
e. Go to the "Deploy & Run Transactions" tab.
f. Select the appropriate environment i.e. Injected Provider - MetaMask.
g. Ensure the contract is selected.
h. Click "Deploy".
i. Once deployed, the contract instance will appear in the "Deployed Contracts" section.
j. Use the available functions to add and retrieve friends.

Once the contract is deployed, you can interact with it.

Then,
This is a [Next.js](https://nextjs.org/) project bootstrapped with [`create-next-app`](https://github.com/vercel/next.js/tree/canary/packages/create-next-app).

## Getting Started

First, run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
# or
bun dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

You can start editing the page by modifying `app/page.js`. The page auto-updates as you edit the file.

This project uses [`next/font`](https://nextjs.org/docs/basic-features/font-optimization) to automatically optimize and load Inter, a custom Google Font.

## Learn More

To learn more about Next.js, take a look at the following resources:

- [Next.js Documentation](https://nextjs.org/docs) - learn about Next.js features and API.
- [Learn Next.js](https://nextjs.org/learn) - an interactive Next.js tutorial.

You can check out [the Next.js GitHub repository](https://github.com/vercel/next.js/) - your feedback and contributions are welcome!

## Deploy on Vercel

The easiest way to deploy your Next.js app is to use the [Vercel Platform](https://vercel.com/new?utm_medium=default-template&filter=next.js&utm_source=create-next-app&utm_campaign=create-next-app-readme) from the creators of Next.js.

Check out our [Next.js deployment documentation](https://nextjs.org/docs/deployment) for more details.


Author:
Bhavya Chhabra

License:
This FactoryContract is licensed under the MIT License.
