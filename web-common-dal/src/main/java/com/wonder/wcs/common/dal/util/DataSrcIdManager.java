/**
 * Tunion.com Inc.
 * Copyright (c) 2004-2011 All Rights Reserved.
 */
package com.wonder.wcs.common.dal.util;


/**
 * 
 * 数据源标识管理器，用于记录数据源标识，通过ThreadLocal实现
 * 
 * @author bo.yu
 * @version $Id: DataSrcIdManager.java, v 0.1 2011-9-25 下午10:19:22 bo.yu Exp $
 */
public class DataSrcIdManager {
    private static ThreadLocal<String> local                     = new ThreadLocal<String>();
    /**
     * 数据源id的名称
     */
    public final static String         DATA_SRC_ID_KEY           = "dt_from";

    /**
     * 历史数据源id的值
     */
    public final static String         DATA_SRC_ID_HISTORY_VALUE = "history";

    /**
     * 取得当前的数据源标识
     * 
     * @return
     */
    public static String getDataSrcIdCurrentValue() {
        return (String) local.get();
    }

    /**
     * 判断是否要连接到历史数据源
     * 
     * @return 连接到历史数据源返回true；否则返回false
     */
//    public static boolean isHistoryDataSrc() {
//        String src = (String) local.get();
//        return StringUtil.equals(src, DATA_SRC_ID_HISTORY_VALUE);
//    }

    /**
     * 置入“history”表示历史库；否则表示当前库<br>
     * 如果dataSrcId为null，那么视为空串；如果超过20个字符串，那么截断
     * 
     * @param dataSrcId
     */
//    public static void setDataSrcId(String dataSrcId) {
//        String str = StringUtil.trimToEmpty(dataSrcId);
//        local.set(StringUtil.left(str, 20));
//    }

    /**
     * 取得数据源id的名称
     * 
     * @return
     */
    public static String getDataSrcIdKey() {
        return DATA_SRC_ID_KEY;
    }

    /**
     * 取得历史数据源id的值
     * 
     * @return
     */
    public static String getDataSrcIdHistoryValue() {
        return DATA_SRC_ID_HISTORY_VALUE;
    }

    public static void clear() {
        local.remove();
    }

}
