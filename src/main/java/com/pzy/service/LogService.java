
package com.pzy.service;

import java.util.Date;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.AdminUser;
import com.pzy.entity.Log;
import com.pzy.repository.CategoryRepository;
import com.pzy.repository.LogRepository;
@Service
public class LogService {
     @Autowired
     private LogRepository logRepository;
     @Autowired
     private CategoryRepository categoryRepository;
    
     public void save(AdminUser user,String ip,String remark,Integer level){
    	 Log log=new Log();
    	 log.setIp(ip);
    	 log.setLevel(level);
    	 log.setRemark(remark);
    	 if(user!=null)
    	 log.setUser(user);
    	 log.setLogDate(new Date(System.currentTimeMillis()));
    	 logRepository.save(log);
     }
     public void save(Log log){
    	 log.setLogDate(new Date(System.currentTimeMillis()));
    	 logRepository.save(log);
     }
     public Page<Log> findAll(final int pageNumber, final int pageSize,final Date start,final Date end){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
        
         Specification<Log> spec = new Specification<Log>() {
              @Override
              public Predicate toPredicate(Root<Log> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (start != null) {
                 predicate.getExpressions().add(cb.greaterThan(root.get("logDate").as(Date.class),start));
              }
              if (end!=null) {
            	  predicate.getExpressions().add(cb.lessThan(root.get("logDate").as(Date.class),end));
              }
              return predicate;
              }
         };
         Page<Log> result = (Page<Log>) logRepository.findAll(spec, pageRequest);
         return result;
}
}