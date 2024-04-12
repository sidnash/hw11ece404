import os
os.system(" rm Mail/recipe_1")
os.system(" rm Mail/recipe_2")
os.system(" rm Mail/recipe_3")
os.system(" rm Mail/recipe_4")


start = 1
end = 74
for x in range(start, end + 1):
    os.system(" procmail .procmailrc < junkMail_"+str(x))
    print(x)

os.system(" diff Mail/recipe_1 Mail/recipe_1_diff")
os.system(" diff Mail/recipe_2 Mail/recipe_2_diff")
os.system(" diff Mail/recipe_3 Mail/recipe_3_diff")
os.system(" diff Mail/recipe_4 Mail/recipe_4_diff")
