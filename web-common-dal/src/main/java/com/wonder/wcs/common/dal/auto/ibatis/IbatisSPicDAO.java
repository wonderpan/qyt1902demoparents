/*
 * Tunion.com Inc.
 * Copyright (c) 2004 All Rights Reserved.
 */
package com.wonder.wcs.common.dal.auto.ibatis;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.wonder.wcs.common.dal.auto.daointerface.SPicDAO;

// auto generated imports
import com.wonder.wcs.common.dal.auto.dataobject.SPicDO;
import org.springframework.dao.DataAccessException;
import com.caozong.util.PageList;
import java.util.Map;
import java.util.HashMap;
import com.wonder.wcs.common.dal.auto.dataobject.SPicDO;
import com.caozong.util.Paginator;

/**
 * An ibatis based implementation of dao interface <tt>com.wonder.wcs.common.dal.auto.daointerface.SPicDAO</tt>.
 *
 * This file is generated by <tt>paygw-dalgen</tt>, a DAL (Data Access Layer)
 * code generation utility specially developed for <tt>paygw</tt> project.
 * 
 * PLEASE DO NOT MODIFY THIS FILE MANUALLY, or else your modification may
 * be OVERWRITTEN by someone else. To modify the file, you should go to 
 * directory <tt>(project-home)/common/dal/src/conf/dalgen</tt>, and 
 * find the corresponding configuration file (<tt>tables/s_pic.xml</tt>). 
 * Modify the configuration file according to your needs, then run <tt>paygw-dalgen</tt> 
 * to generate this file.
 *
 * @author Xuhua.liu
 */
public class IbatisSPicDAO extends SqlMapClientDaoSupport implements SPicDAO {
	/**
	 *  Insert one <tt>SPicDO</tt> object to DB table <tt>s_pic</tt>, return primary key
	 *
   	 *  <p>
   	 *  Description for this operation is<br>
   	 *  <tt></tt>
	 *  <p>
	 *  The sql statement for this operation is <br>
	 *  <tt>insert into s_pic(id,name,url,create_time,update_time) values (?, ?, ?, ?, ?)</tt>
	 *
	 *	@param SPic
	 *	@return int
	 *	@throws DataAccessException
	 */	 
    public int insert(SPicDO SPic) throws DataAccessException {
    	if (SPic == null) {
    		throw new IllegalArgumentException("Can't insert a null data object into db.");
    	}
    	
        getSqlMapClientTemplate().insert("MS-S-PIC-INSERT", SPic);

        return SPic.getId();
    }

	/**
	 *  Query DB table <tt>s_pic</tt> for records.
	 *
   	 *  <p>
   	 *  Description for this operation is<br>
   	 *  <tt></tt>
	 *  <p>
	 *  The sql statement for this operation is <br>
	 *  <tt>select id, name, url, create_time, update_time from s_pic where (id = ?)</tt>
	 *
	 *	@param id
	 *	@return SPicDO
	 *	@throws DataAccessException
	 */	 
    public SPicDO selectById(int id) throws DataAccessException {
        Integer param = new Integer(id);

        return (SPicDO) getSqlMapClientTemplate().queryForObject("MS-S-PIC-SELECT-BY-ID", param);

    }

	/**
	 *  Update DB table <tt>s_pic</tt>.
	 *
   	 *  <p>
   	 *  Description for this operation is<br>
   	 *  <tt></tt>
	 *  <p>
	 *  The sql statement for this operation is <br>
	 *  <tt>update s_pic set name=?, url=?, create_time=?, update_time=? where (id = ?)</tt>
	 *
	 *	@param SPic
	 *	@return int
	 *	@throws DataAccessException
	 */	 
    public int updateByID(SPicDO SPic) throws DataAccessException {
    	if (SPic == null) {
    		throw new IllegalArgumentException("Can't update by a null data object.");
    	}


        return getSqlMapClientTemplate().update("MS-S-PIC-UPDATE-BY-ID", SPic);
    }

	/**
	 *  Delete records from DB table <tt>s_pic</tt>.
	 *
   	 *  <p>
   	 *  Description for this operation is<br>
   	 *  <tt></tt>
	 *  <p>
	 *  The sql statement for this operation is <br>
	 *  <tt>delete from s_pic where (id = ?)</tt>
	 *
	 *	@param id
	 *	@return int
	 *	@throws DataAccessException
	 */	 
    public int deleteById(int id) throws DataAccessException {
        Integer param = new Integer(id);

        return getSqlMapClientTemplate().delete("MS-S-PIC-DELETE-BY-ID", param);
    }

	/**
	 *  Query DB table <tt>s_pic</tt> for records.
	 *
   	 *  <p>
   	 *  Description for this operation is<br>
   	 *  <tt></tt>
	 *  <p>
	 *  The sql statement for this operation is <br>
	 *  <tt>select id, name, url, create_time, update_time from s_pic where (name LIKE '$name$%') order by sort ASC</tt>
	 *
	 *	@param name
	 *	@param pageSize
	 *	@param pageNum
	 *	@return PageList<SPicDO>
	 *	@throws DataAccessException
	 */	 
    public PageList<SPicDO> selectByName(String name, int pageSize, int pageNum) throws DataAccessException {
        Map<String,Object> param = new HashMap<String,Object>();

        param.put("name", name);
        param.put("pageSize", new Integer(pageSize));
        param.put("pageNum", new Integer(pageNum));

        Paginator paginator = new Paginator();
        paginator.setItemsPerPage(pageSize);
        paginator.setPage(pageNum);

        paginator.setItems(((Integer) getSqlMapClientTemplate().queryForObject("MS-S-PIC-SELECT-BY-NAME-COUNT-FOR-PAGING", param)).intValue());
        
        PageList<SPicDO>  pageList = new PageList<SPicDO>();
        pageList.setPaginator(paginator);
        
        if (paginator.getBeginIndex() <= paginator.getItems()) {
            param.put("startRow", new Integer(paginator.getBeginIndex()));
            param.put("rowLength", new Integer(paginator.getLength()));
            pageList.addAll(getSqlMapClientTemplate().queryForList("MS-S-PIC-SELECT-BY-NAME", param));
        }
        
        return pageList;
    }

	/**
	 *  Query DB table <tt>s_pic</tt> for records.
	 *
   	 *  <p>
   	 *  Description for this operation is<br>
   	 *  <tt></tt>
	 *  <p>
	 *  The sql statement for this operation is <br>
	 *  <tt>select id, name, url, create_time, update_time from s_pic where (name = ?)</tt>
	 *
	 *	@param name
	 *	@return SPicDO
	 *	@throws DataAccessException
	 */	 
    public SPicDO getByName(String name) throws DataAccessException {



        return (SPicDO) getSqlMapClientTemplate().queryForObject("MS-S-PIC-GET-BY-NAME", name);

    }

}