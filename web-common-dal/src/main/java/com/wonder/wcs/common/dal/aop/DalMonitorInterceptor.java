package com.wonder.wcs.common.dal.aop;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.lang.reflect.Method;

/**
 * DAL调用监控拦截器, 主要负责记录DAL执行的情况.
 * 
 * @author xuhua.liu
 * @version $Id: DalMonitorInterceptor.java, v 0.1 2012-2-25 上午11:27:59 xuhua.liu Exp $
 */
public class DalMonitorInterceptor implements MethodInterceptor {

    /** 打印日志.*/
    private static final Logger logger   = LoggerFactory.getLogger("DAL-DIGEST");
    private static final int    MAX_TIME = 50;                                   //超过50毫秒的进行监控

    /**
     * @see MethodInterceptor#invoke(MethodInvocation)
     */
    public Object invoke(MethodInvocation invocation) throws Throwable {

        Method methodInvocated = invocation.getMethod();
        Class<?> classInvocated = methodInvocated.getDeclaringClass();

        String packageName = classInvocated.getPackage().getName();
        String className = classInvocated.getSimpleName();

        String methodName = methodInvocated.getName();
        String method = StringUtils.substringBetween(packageName, "dal.", ".") + "." + className
                        + "." + methodName;

        //参数
        Object[] args = invocation.getArguments();
        method += "[";
        for (Object a : args) {
            if(method.endsWith("[")){
            method += a;
            }else{
                method += ","+a;
            }
        }
        method += "]";
        long startTime = System.currentTimeMillis();

        // 是否有异常.
        boolean hasError = false;
        try {

            return invocation.proceed();
        } catch (Throwable ex) {
            hasError = true;
            throw ex;
        } finally {
            long elapseTime = System.currentTimeMillis() - startTime;
            if (hasError) {
                if (logger.isInfoEnabled()) {
                    logger.info("(" + method + ",N," + elapseTime + "ms)");
                }
            } else {
                if (elapseTime > MAX_TIME) {
                    if (logger.isInfoEnabled()) {
                        logger.info("(" + method + ",Y," + elapseTime + "ms)");
                    }
                }
            }

        }
    }

}
