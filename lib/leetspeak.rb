class String
  def leetspeak()
    letters = []
    letters = self.split("")
    i = -1
    while (i <= letters.length-1)
      i += 1
      if letters[i] === "s"
        letters[0] = "s"
      end
      if letters[i] === "e"
        letters[i] = 3
      end
      if letters[i] === "o"
        letters[i] = 0
      end
      if letters[i] === "I"
        letters[i] = 1
      end
      if (letters[i] === "s") & (letters[i-1] === " ")
        letters[i] = "s"
      elsif letters[i] === "s"
        letters[i] = "z"
      end
    end
    return letters.join()
  end
end




#
# if (letters[i] === " ") & (letters[i+1] === "s")
#   letters[i+1] = "s"
# else letters[i] === "s"
#     letters[i] = "z"
