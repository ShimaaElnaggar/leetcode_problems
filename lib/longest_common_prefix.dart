
void main() {
  print(longestCommonPrefix(['flower','flow','floee']));
}
String longestCommonPrefix(List<String> strs){
  String prefix = strs[0];
  for(int i = 1; i<strs.length; i++){
    while(strs[i].indexOf(prefix) !=0){
      prefix = prefix.substring(0,prefix.length-1);
      if(prefix.isEmpty)return '';
    }
  }
  return prefix;
}

//////////////ANOTHER WAY 1////////////////////////////
// String longestCommonPrefix(List<String> strs) {
//
//   String prefix = strs[0];
//
//   for (int i = 1; i < strs.length; i++) {
//     while (!strs[i].startsWith(prefix)) {
//       prefix = prefix.substring(0, prefix.length - 1);
//     }
//   }
//   if (prefix.isEmpty) {
//     return "";
//   } else {
//     return prefix;
//   }
// }

//////////////////////////////////////ANOTHER WAY2//////////////////////////////////////

// String longestCommonPrefix(List<String> strs) {
//
//   String prefix = strs.reduce((element, str) => element.length < str.length ? element : str);
//
//   for (int i = 0; i < prefix.length; i++) {
//     String character = prefix[i];
//     for (String str in strs) {
//       if (str[i] != character) {
//         return prefix.substring(0, i);
//       }
//     }
//   }
//
//   if (prefix.isEmpty) {
//     return "";
//   } else {
//     return prefix;
//   }
// }


