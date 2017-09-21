## **[![RUBY](https://user-images.githubusercontent.com/29721601/30624638-2d170a16-9df1-11e7-8c3a-b0753abdd5cd.png "Ruby")](https://www.ruby-lang.org/en/) VIVIXX CHALLENGES:** **_ATM_**

### THE CHALLENGE  
> Joseph is in a rush to make a really important purchase. He has no money on him so he has gone to withdraw money from BPI but has found that there are serious issues with their systems! Can you reprogram the atm so he can buy his romance novel?"

### THE PROGRAM
This program acts as an ATM with some of the functions expected of an ATM. I wish I knew more, but I don't have enough money to occasionally visit an ATM.

#### Welcome to BPI!

![](https://user-images.githubusercontent.com/29721601/30681823-b9bdc4a8-9ed9-11e7-9b2e-e351981823f7.png)

After pressing 'Enter' on the opening screen, you will be asked for a 4-digit PIN number. Two have been provided in the next section so feel free to use any of them.

![](https://user-images.githubusercontent.com/29721601/30681824-b9be157a-9ed9-11e7-88fb-e46742c73ebb.png)

#### Accounts
In order to try out the program, here are details for the 2 accounts you can use:

| PIN | ACCOUNT NUMBER | BALANCE |
| - | - | - |
| 4863 | 2198513516 | 1000000 |
| 8954 | 1863516512 | 5000 |

#### TRANSACTIONS
Once you enter a correct pin, you will be brought to the 'TRANSACTIONS' screen which displays several funtions:
1. [Inquire Balance](#1-inquire-balance)
2. [Withdraw](#2-withdraw)
3. [Deposit](#3-deposit)
4. [Change Pin](#4-change-pin)
5. [Fund Transfer](#5-fund-transfer)
6. [Exit](#6-exit)

#### 1. Inquire Balance
This displays how much money is left in the account.

![](https://user-images.githubusercontent.com/29721601/30681832-bb9b67d0-9ed9-11e7-9570-f59a1d046ca5.png)

#### 2. Withdraw

![](https://user-images.githubusercontent.com/29721601/30681830-bb8f5dc8-9ed9-11e7-9a69-f75329151498.png)

After withdrawing, you'll be able to see your previous balance, how much you withdrew, and how much is left in the account.

![](https://user-images.githubusercontent.com/29721601/30681831-bb918990-9ed9-11e7-96ca-5edcaa0f133d.png)

I you choose 'Inquire Balance' again, you'll notice that it will display the same current balance as was in the 'Withdraw' screen.

![](https://user-images.githubusercontent.com/29721601/30681829-bb8f1db8-9ed9-11e7-9bf7-11e435e51713.png)

#### 3. Deposit
The deposit screen is pretty much the same as the 'Withdraw' screen, only that you add money to your account rather than get from it.

![](https://user-images.githubusercontent.com/29721601/30681828-bb8ee9f6-9ed9-11e7-901d-47e86c908e14.png)

And if you 'Inquire Balance' again:

![](https://user-images.githubusercontent.com/29721601/30681833-bba903d6-9ed9-11e7-82fe-af8338b5f64d.png)

#### 4. Change Pin  

> Please check the "[Notes](#notes)" section regarding the issue of having the same pin with other accounts.

You'll have to enter the old PIN first before you can change to a new PIN.

![](https://user-images.githubusercontent.com/29721601/30681837-be732538-9ed9-11e7-9f45-58a51ca4b857.png)

The program will now return to the opening screen. Now, if you enter your old pin, it should be incorrect.

![](https://user-images.githubusercontent.com/29721601/30681836-be71fa64-9ed9-11e7-821f-0674f4ffa97e.png)

If you try the new pin, you should be able to access the 'TRANSACTIONS' screen.

#### 5. Fund Transfer
Here, you will able to transfer money to another account available in the program.

You may want to visit the "[Accounts](#accounts)" section again to view the Account Numbers that are available. These will be needed in order to complete the transfer.

Consider the initial balances of the 2 accounts available. Let's use the richer account for the fund transfer.

![](https://user-images.githubusercontent.com/29721601/30681840-be74e4e0-9ed9-11e7-9856-7c606dda2fd4.png)

Here, 50,000 PhP was transferred to the other account. Let's check the current balance to see if the transfer really took place:

![](https://user-images.githubusercontent.com/29721601/30681838-be739c34-9ed9-11e7-948b-cba6c3aab13b.png)

If we open the other account and 'Inquire Balance', 50,000 PhP should've been added to the account.

![](https://user-images.githubusercontent.com/29721601/30681839-be742852-9ed9-11e7-8454-3dafa0b3abe5.png)

#### 6. Exit
After every transaction (except Change PIN), you will be asked if you would like to make another transaction. Choosing 'No' will display the exit screen, which is what is also shown when pressing '6'.

![](https://user-images.githubusercontent.com/29721601/30681843-c0e986ae-9ed9-11e7-9ad8-5cb5b918ecbd.png)

#### Notes
- For the 'Change PIN' function, if you tried to change your PIN to one that's being used by another account, you won't be able to. I understand that this is not a good idea as it will allow another user to know another user's PIN. It was just designed that way here so that there won't be a conflict with the accounts when trying to input the PIN.

- This program doesn't have a database [yet]. In order to make a 'pseudo-memory', I just let the program go back to the opening screen when the user chooses not to make another transaction or the 'Exit' option. The initial balances and PINs will return if the program was closed through the console (Pressing Ctrl+C).
