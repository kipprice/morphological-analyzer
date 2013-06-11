#---------------------------------------------------#
#   Python FST for Swahili Nouns                    #
#   Carnegie Mellon University                      #
#   5 June 2013                                     #
#---------------------------------------------------#

import re

root = ['bao', 'embe']

def checkSpelling(w):
    reg_vow = r'w[aeiou].*'
    reg_cons = r'u[^aeiou].*'
    
    data = re.findall(reg_vow, w)
    data.append(re.findall(reg_cons, w))
    
    if len(data) == 0:
        return False
    else:
        return data


def main():
    #   read in word
    #   check if it's in root
    #   check for changes
    
    word = raw_input("Please give a Swahili word:  ")
    
    for i in root:
        if i == word[1:]:
            print checkSpelling(word);
    

    


main()
