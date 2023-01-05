import random

def num_generator():
    com_num=random.sample("0123456789",4)
    com_num="".join(com_num)
    return(com_num)

def player_input():
    while(True):
        try:
            global player_num
            z=player_num=input("Enter Your Number:")
            z=int(z)

            if(len(player_num)!=4):
                print("Enter a 4 digit number")
                continue
        except ValueError:
            
            print("The input you entered is not a number")
        else:
            x=0
            for i in range(0,4):
                x=x+player_num.count(player_num[i])
            
            if(x!=4):
                print("Enter a number with different digits")
                continue
            else:
                return

def num_comparison(a,b):
    a=str(a)
    b=str(b)
    for i in range(0,4):
        for j in range(0,4):
            if(i==j)and(a[i]==b[j]):
                global cow_count
                cow_count+=1
            elif(i!=j)and(a[i]==b[j]):
                global bull_count
                bull_count+=1
            else:
                pass


print("------WELCOME TO COWS AND BULLS GAME------")
print('''RULES:
1. THE NUMBER YOU ENTERED MUST HAVE ONLY 4 DIFFERENT DIGITS
2. IF THE PLACE VALUE OF A NUMBER IS SAME AS THAT OF THE COMPUTER\'S NUMBER
THAT IS COUNTED AS A COW
3. IF THE PLACE VALUE IS DIFFERENT THEN IT IS COUNTED AS A BULL''')
print("Have fun...")
player_num=0
user_choice=True
while(user_choice):
    cow_count=0
    bull_count=0
    game_num=num_generator()
    
    score_counter=0
    while(True):
        player_input()
        score_counter=score_counter+1
        num_comparison(game_num,player_num)
        if(cow_count==4):
            print("''YOU WON''")
            print("YOU HAVE COMPLETED THE GAME IN",str(score_counter),"CHANCES")
            print("DO YOU WANT TO PLAY AGAIN")
            print("ENTER \"y\" TO PLAY AGAIN")
            print("Enter anything to exit")
            choice=input("ENTER YOUR CHOICE: ")
            if(choice=="y"):
                user_choice=True
            else:
                user_choice=False
            break
        else:
            print("cow",cow_count)
            print("bull",bull_count)
            cow_count=0
            bull_count=0


'''
Output:
------WELCOME TO COWS AND BULLS GAME------
RULES:
1. THE NUMBER YOU ENTERED MUST HAVE ONLY 4 DIFFERENT DIGITS
2. IF THE PLACE VALUE OF A NUMBER IS SAME AS THAT OF THE COMPUTER'S NUMBER
THAT IS COUNTED AS A COW
3. IF THE PLACE VALUE IS DIFFERENT THEN IT IS COUNTED AS A BULL
Have fun...

Enter Your Number:1234
cow 1
bull 0
Enter Your Number:1205
cow 3
bull 0
Enter Your Number:502
Enter a 4 digit number
Enter Your Number:1456
cow 0
bull 2
Enter Your Number:7205
cow 3
bull 0
Enter Your Number:6205
''YOU WON''
YOU HAVE COMPLETED THE GAME IN 5 CHANCES
DO YOU WANT TO PLAY AGAIN
ENTER "y" TO PLAY AGAIN
Enter anything to exit
ENTER YOUR CHOICE: h
'''
