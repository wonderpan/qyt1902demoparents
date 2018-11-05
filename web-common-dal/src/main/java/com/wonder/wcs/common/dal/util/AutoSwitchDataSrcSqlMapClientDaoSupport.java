/**
 * Tunion.com Inc.
 * Copyright (c) 2004-2011 All Rights Reserved.
 */
package com.wonder.wcs.common.dal.util;

import javax.sql.DataSource;

import org.apache.log4j.Logger;
import org.springframework.dao.support.DaoSupport;
import org.springframework.orm.ibatis.SqlMapClientTemplate;

import com.ibatis.sqlmap.client.SqlMapClient;

/**
 * 
 * 根据DataSrcIdManager.getDataSrcId()动态切换数据源SqlMapClientDaoSupport，
 * 
 * @author bo.yu
 * @version $Id: AutoSwitchDataSrcSqlMapClientDaoSupport.java, v 0.1 2011-9-25 下午10:18:27 bo.yu Exp $
 * 
 */
public abstract class AutoSwitchDataSrcSqlMapClientDaoSupport extends DaoSupport {
    Logger logger = Logger.getLogger(AutoSwitchDataSrcSqlMapClientDaoSupport.class);
    /** 访问生产库的sqlMapClientTemplate */
    private SqlMapClientTemplate sqlMapClientTemplate        = new SqlMapClientTemplate();

    /** 访问历史库的sqlMapClientTemplate */
    private SqlMapClientTemplate historySqlMapClientTemplate = new SqlMapClientTemplate();

    /** 禁止自动切换数据源，默认访问生产库 */
    private boolean              disableAutoSwitch           = false;

    private boolean              externalTemplate            = false;

    /**
     * 根据DataSrcIdManager.getDataSrcId()返回实际用到的sqlMapClientTemplate<br><br>
     * 当disableAutoSwitch=true，总是返回生产库的sqlMapClientTemplate
     * 
     * @return sqlMapClientTemplate对象
     */
    public final SqlMapClientTemplate getSqlMapClientTemplate() {
//        if (!disableAutoSwitch && DataSrcIdManager.isHistoryDataSrc()) {
//            logger.warn("当前线程使用历史库");
//            return historySqlMapClientTemplate;
//        } else {
            return sqlMapClientTemplate;
//        }
    }

    /**
     * 设置生产数据源
     * @param dataSource
     */
    public final void setDataSource(DataSource dataSource) {
        this.sqlMapClientTemplate.setDataSource(dataSource);
    }

    /**
     * 设置历史数据源
     * @param historyDataSource
     */
    public final void setHistoryDataSource(DataSource historyDataSource) {
        this.historySqlMapClientTemplate.setDataSource(historyDataSource);
    }

    /**
     * 设置生产SqlMapClient
     * @param sqlMapClient
     */
    public final void setSqlMapClient(SqlMapClient sqlMapClient) {
        this.sqlMapClientTemplate.setSqlMapClient(sqlMapClient);
    }

    /**
     * 设置历史SqlMapClient
     * @param historySqlMapClient
     */
    public final void setHistorySqlMapClient(SqlMapClient historySqlMapClient) {
        this.historySqlMapClientTemplate.setSqlMapClient(historySqlMapClient);
    }

    protected final void checkDaoConfig() {
        if (!this.externalTemplate) {
            this.sqlMapClientTemplate.afterPropertiesSet();
            this.historySqlMapClientTemplate.afterPropertiesSet();
        }
    }

    /**
     * @param disableAutoSwitch the disableAutoSwitch to set
     */
    public void setDisableAutoSwitch(boolean disableAutoSwitch) {
        this.disableAutoSwitch = disableAutoSwitch;
    }
}
