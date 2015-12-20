
package com.pzy.service;

import java.util.List;

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
import com.pzy.entity.Runlog;
import com.pzy.repository.RunlogRepository;
@Service
public class RunlogService {
	
    @Autowired
    private RunlogRepository runlogRepository;
    public List<Runlog> findAll() {
         return (List<Runlog>) runlogRepository.findAll();
    }
    public List<Runlog> findRunlogSubs() {
        return (List<Runlog>) runlogRepository.findAll();
    }
    public List<Runlog> findRunlogs() {
        return (List<Runlog>) runlogRepository.findAll();
    }
    
    public Page<Runlog> findAll(final int pageNumber, final int pageSize,final String name){
        PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
       
        Specification<Runlog> spec = new Specification<Runlog>() {
             public Predicate toPredicate(Root<Runlog> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
             Predicate predicate = cb.conjunction();
             if (name != null) {
                  predicate.getExpressions().add(cb.like(root.get("name").as(String.class), name+"%"));
             }
             return predicate;
             }
        };
        Page<Runlog> result = (Page<Runlog>) runlogRepository.findAll(spec, pageRequest);
        return result;
    	}
		public void delete(Long id){
			runlogRepository.delete(id);
		}
		public Runlog findRunlog(Long id){
			  return runlogRepository.findOne(id);
		}
		public Runlog find(Long id){
			  return runlogRepository.findOne(id);
		}
		public void save(Runlog runlog){
			runlogRepository.save(runlog);
		}
}