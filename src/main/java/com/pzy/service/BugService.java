
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

import com.pzy.entity.Bug;
import com.pzy.repository.BugRepository;
@Service
public class BugService {
	
    @Autowired
    private BugRepository bugRepository;
    public List<Bug> findAll() {
         return (List<Bug>) bugRepository.findAll();
    }
    public List<Bug> findBugSubs() {
        return (List<Bug>) bugRepository.findAll();
    }
    public List<Bug> findBugs() {
        return (List<Bug>) bugRepository.findAll();
    }
    
    public Page<Bug> findAll(final int pageNumber, final int pageSize,final String name){
        PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
       
        Specification<Bug> spec = new Specification<Bug>() {
             public Predicate toPredicate(Root<Bug> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
             Predicate predicate = cb.conjunction();
             if (name != null) {
                  predicate.getExpressions().add(cb.like(root.get("name").as(String.class), name+"%"));
             }
             return predicate;
             }
        };
        Page<Bug> result = (Page<Bug>) bugRepository.findAll(spec, pageRequest);
        return result;
    	}
		public void delete(Long id){
			bugRepository.delete(id);
		}
		public Bug findBug(Long id){
			  return bugRepository.findOne(id);
		}
		public Bug find(Long id){
			  return bugRepository.findOne(id);
		}
		public void save(Bug bug){
			bugRepository.save(bug);
		}
}