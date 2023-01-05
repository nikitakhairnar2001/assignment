import random

f=open("file.txt")
list=[]
for li in f:
    list.append(li.strip())
f.close()

def random_word():
    word = random.choice(list)
    return word.upper()

def play(word):
    chances = 6
    guess = '-'*len(word)
    print("<----Welecome to the Hangman game!---->")
    print("--------------------------------------")
    print("")
    while chances != 0:
        print(guess)
        letter = input("Guess a letter:").upper()
        
        if letter in word:
            for index in range(len(word)):
                if word[index] == letter:
                    guess = guess[:index] + letter + guess[index+1:]
                    print("The remaining chances are:",chances)
     
            if guess == word:
                print("You Won!!!")
                break
        else:
              chances -= 1
              print("Incorrect Guess")
              print("The remaining chances are:",chances)
     
    print("Game Over")
    print("The Correct word is:",word)


def main():
    words = random_word()
    play(words)
    while input("You want to Play Again? (Y/N) ").upper() == "Y":
        words = random_word()
        play(words)


main()
    
        
    
    










                
    
