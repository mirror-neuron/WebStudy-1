package com.text;

import java.util.ArrayList;
import java.util.Iterator;

public class Solution
{

	public static void main(String[] args)
	{
		// TODO Auto-generated method stub

		String participant[]= {"leo", "kiki", "eden"};
		String completion[]= { "kiki","eden"};
        ArrayList<String> list = new ArrayList<String>();
        
        
        for (int i=0; i<participant.length;i++){
            list.add(participant[i]);
        }
        
       
        
        
        for(int i=0;i<completion.length;i++){
        	Iterator<String> iter = list.iterator();
        	boolean check =true;
            while(iter.hasNext()){
             String s = iter.next();             
                if(check){
                    if(s.equals(completion[i])){
                        iter.remove();
                        check=false;
                    }
                }            
            }         
        }
        for(String lists : list)
        {
        	System.out.println(lists);
           
        }   


	}

}
