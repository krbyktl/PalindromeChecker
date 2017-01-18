public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(word.equals(reverse(word)))
  {
    return true;
  }
  else
  {
    return false;
  }
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i >= 0; i--)
    {
        sNew = sNew + str.substring(i, i+1).toLowerCase();
    }
    return sNew;
}
public String noSpaces(String atr)
{
  String aNew = new String();
  for(int i = 0; i < atr.length(); i++)
  {
    if(atr.substring(i, i+1).equals(" ") == false)
    {
      aNew = aNew + atr.substring(i, i+1);
    }
  }
  return aNew;
}
public String noCapitals(String btr)
{
  String bNew = new String();
  bNew = btr.toLowerCase();
  return bNew;
}
public String allLetters(String ctr)
{
  
}