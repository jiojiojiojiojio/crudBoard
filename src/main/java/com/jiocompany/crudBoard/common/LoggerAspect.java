package com.jiocompany.crudBoard.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

// advice : 공통업무를 지원하는 클래스

@Component
@Aspect
public class LoggerAspect {
	protected Logger log = LoggerFactory.getLogger(LoggerAspect.class);
	
	//컨트롤러 시작 전과 후에 타이머를 작동 시키자                   *(..)은 모든 메서드를 수행할때. 라는 뜻
	@Around("execution(* com.jiocompany.crudBoard.*Controller.*(..))")
	public Object logPrint(ProceedingJoinPoint joinPoint) throws Throwable {
		
		//핵심 업무 실행 전
		Object result = null;
		long start = System.currentTimeMillis();
		
		//핵심업무 실행
		result = joinPoint.proceed();
		
		//핵심업무 실행 후
		long end = System.currentTimeMillis();
		log.info("->수행시간"+(end-start)+"밀리초");
		return result;
	}
}
