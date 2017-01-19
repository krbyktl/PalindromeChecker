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
  String reversal = reverse(word);
  String a = noSpaces(reversal);
  String b = noCapitals(a);
  String c = allLetters(b);
  if(word.equals(c))
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
  String cNew = new String ();
  for(int j = 0; j < ctr.length(); j++)
  {
     if(Character.isLetter(ctr.charAt(j)) == true)
     {
       cNew = cNew + ctr.substring(j, j+1);
     }
  }
  return cNew;
}