void checkVowelConsonant() {
  String char = 'e';
  const vowels = ['a', 'e', 'i', 'o', 'u'];
  if (vowels.contains(char.toLowerCase())) {
    print("$char is a Vowel.");
  } else {
    print("$char is a Consonant.");
  }
}

void main() {
  print("\nChecking if a character is a Vowel or Consonant:");
  checkVowelConsonant();
}
