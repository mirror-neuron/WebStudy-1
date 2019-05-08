package com.text;

import java.util.Iterator;

public class Solution
{

	public static void main(String[] args)
	{
		// TODO Auto-generated method stub

		String phone_book[] = { "113", "12340", "123440", "12345", "98346"};
		boolean answer = false;

		for (int i = 0; i < phone_book.length; i++)
		{
			int j = 0;
			for (String s : phone_book)
			{  
				
				if(j!=i) {
				int num = Math.min(phone_book[i].length(), s.length());

				if ((s.substring(0, num)).equals(phone_book[i].substring(0, num)))
					System.out.println(answer);
				}
				j++;
			}
		}

		answer = true;
		System.out.println(answer);

	}

}
