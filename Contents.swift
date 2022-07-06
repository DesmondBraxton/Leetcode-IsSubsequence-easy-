import UIKit

// WE just wanna know if s is a subsequence of t
// All the characters can be found in t in the order that it is given
// They dont have to be consecutive
// s ="ace"     t= "abcde"
// ace is in abcde in its given order
// Two pointers
    // One pointer [i] is initialized to traveerse "s"
    // pointer j is going to traverse strting "t"
// We check to see if the pointers are equal, when we find the character we shift both pointers
// check for s at index i and t at index j



// My solution

//func isSubsequence(_ s: String, _ t: String) -> Bool {
    
  //  var i = s.startIndex
  //  var j = t.startIndex
    
  //  while i < s.count && j < t.count {
  //      if s[i] == t[j]  { // 1
   //         i += 1
  //          j += 1
            
     //   }
    
    // if i == s.count { // That means we iterated through the whole array, a check for completion basically
    //return true
   // } else { return false }
   // }
//}

// Solution used on leetcode

func isSubsequence(_ s: String, _ t: String) -> Bool {
          if s == "" { return true }
          else if t == "" { return false }
 
          var arrayS = [Character](s)
          var arrayT = [Character](t)
 
          func helper(arrayS: [Character], arrayT: [Character], startS: Int, startT: Int) -> Bool {

             for i in startT ..< arrayT.count {
                 if arrayS[startS] == arrayT[i] {
                     if startS == arrayS.count - 1 {
                         return true
                     } else {
                         return helper(arrayS: arrayS, arrayT: arrayT, startS: startS + 1, startT: i + 1)
                     }
                 }
             }
             return false
        }
        return helper(arrayS: arrayS, arrayT: arrayT, startS: 0, startT: 0)

    }
