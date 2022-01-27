package com.mafideju.springdemo.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class LogginAspect {
	
	@Before("execution(public void getCustomers())")
	public void beforeGetCustomersAdvice() {
		System.out.println(">>>>> EXECUTANDO LOG NO GET CUSTOMERS() ");
	}
}
