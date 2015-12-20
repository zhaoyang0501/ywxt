
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

import com.pzy.entity.Fixlog;
import com.pzy.repository.FixlogRepository;
@Service
public class FixlogService {
	
    @Autowired
    private FixlogRepository runlogRepository;
    public List<Fixlog> findAll() {
         return (List<Fixlog>) runlogRepository.findAll();
    }
    public List<Fixlog> findFixlogSubs() {
        return (List<Fixlog>) runlogRepository.findAll();
    }
    public List<Fixlog> findFixlogs() {
        return (List<Fixlog>) runlogRepository.findAll();
    }
    
    public Page<Fixlog> findAll(final int pageNumber, final int pageSize,final String name){
        PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
       
        Specification<Fixlog> spec = new Specification<Fixlog>() {
             public Predicate toPredicate(Root<Fixlog> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
             Predicate predicate = cb.conjunction();
             if (name != null) {
                  predicate.getExpressions().add(cb.like(root.get("name").as(String.class), name+"%"));
             }
             return predicate;
             }
        };
        Page<Fixlog> result = (Page<Fixlog>) runlogRepository.findAll(spec, pageRequest);
        return result;
    	}
		public void delete(Long id){
			runlogRepository.delete(id);
		}
		public Fixlog findFixlog(Long id){
			  return runlogRepository.findOne(id);
		}
		public Fixlog find(Long id){
			  return runlogRepository.findOne(id);
		}
		public void save(Fixlog runlog){
			runlogRepository.save(runlog);
		}
}