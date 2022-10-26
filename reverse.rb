def solution(inputString)
    if inputString.include? "("
     solution(reverseOnce(inputString));
    else
     inputString
    end
end

def reverseOnce(str)
  regex = /\(([^()]*)\)/i
  subStr = str.match(regex)[1]
  initial_str = subStr
  subStr = subStr.reverse
  str.gsub("(#{initial_str})", subStr)
end
