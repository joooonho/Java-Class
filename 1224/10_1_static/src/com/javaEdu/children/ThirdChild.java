package com.javaEdu.children;

import com.javaEdu.papa.*;

public class ThirdChild {

	public ThirdChild() {
		
	}
	
	public void takeMoney(int money) {
		PapaPouch.MONEY = PapaPouch.MONEY - money;
		if(PapaPouch.MONEY < 0) 
			System.out.println("셋째 돈 못받음"+ PapaPouch.MONEY);
		
	}
}
