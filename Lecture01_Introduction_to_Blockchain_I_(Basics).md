# LECTURE-1

# Index
* A history of blockchain -- how the computation environment graually evolved.
* Blockchain -- architecture, design anf protocol.
* Blockchain consensus protocols.
* Security and Privacy aspects of Blockchain.
* Various use cases -- Finance, Supply Chain, Government.
* Hyperledger Fabric -- a platform for blockchain development.
* Research aspects.

# What is a Blockchain?
A decentralized computation and information sharing platform that enables multiple authoritive domains, who do not trust each other, to cooperate, 
coordinate and collaborate in a rational decision making process.

## Problem with a centralized system:
* If we do not have sufficient bandwidth to load google docs, we'll not be able to edit.
* What if the server crashes? Then we lost all our data.

### Centralized vs Decentralized vs Distributed
* **Centralized:** Every node is connected to central node.
* **Decentralized:** Multiple points of coordination.
* **Distributed:** Everyone collectively execute the job.

<p  align="center">
  <img src="https://user-images.githubusercontent.com/32765126/147952924-dd50bf96-32b0-4dda-a203-6ec1b46da42d.png" width="500" height="300">
</p>

> So, till now what we have discussed we can say that **Blockchain** is a decentralized database with strong consistency support.

## Simplified look of the Blockchain
* Every node maintains a **local copy** of the global **data-sheet**.
* The system ensures consistency among the local copies
  * The local copies at every node is identical.
  * The local copies are always updated based on the global information.
* We call this a **Public Ledger**
  * A database of historical information may be utilized for future computation.
  * The historical information may be utlized for future computation.
* An Example:
  * Say the historical information are the banking transactions.
  * The old transactions are use to validate the new transactions.

<p  align="center">
  <img src="https://user-images.githubusercontent.com/32765126/147953919-09dbbb9e-eafe-4399-ada9-767ce992cc52.png" width="500" height="300">
</p>


## Blockchain and Public Ledger


> Blockchain work like a public ledger.

* We need to ensure a number of different aspects:
  * **Protocols for commitment** Ensure that every valid transaction from the clients are committed and included in the blockchain within a finite time.
  * **Consensus** Ensure that the local copies are consistent and updated.
  * **Security** The data needs to be tamper proof. Note that the clients may act maliciously or can be compromised.
  * **Privacy and authenticity** Tha data belong to various clients; privacy and authenticity needs to be ensured.


> Blockchain is an **open, distributed ledger** that can record transactions between two parties efficiently and in a **verifiable** and **permanent** way.


# LECTURE-2

## The fundamentals

### Cryptographically Secured Hash functions
* **Hash Functions:** Map any sized data to a fixed size; Example H(x) = x%n where x and n are integers and % is the modular (remainder after dicsion by n) operations. x can be of any arbitrary length, but H(x) is within the range [0,n-1].
* **Cryptographically Secured**
  * One way, given a x, we can compute H(x), but given a H(x), no deterministic algorithm can compute x.
  * For two different x<sub>1</sub>, and x<sub>2</sub>, H(x<sub>1</sub>) and H(x<sub>2</sub>) should be different.


