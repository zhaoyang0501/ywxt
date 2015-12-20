
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

import com.pzy.entity.Wiki;
import com.pzy.repository.WikiRepository;

@Service
public class WikiService {
	
    @Autowired
    private WikiRepository wikiRepository;
    public List<Wiki> findAll() {
         return (List<Wiki>) wikiRepository.findAll();
    }
    public List<Wiki> findWikiSubs() {
        return (List<Wiki>) wikiRepository.findAll();
    }
    public List<Wiki> findWikis() {
        return (List<Wiki>) wikiRepository.findAll();
    }
    
    public Page<Wiki> findAll(final int pageNumber, final int pageSize,final String name){
        PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
       
        Specification<Wiki> spec = new Specification<Wiki>() {
             public Predicate toPredicate(Root<Wiki> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
             Predicate predicate = cb.conjunction();
             if (name != null) {
                  predicate.getExpressions().add(cb.like(root.get("name").as(String.class), name+"%"));
             }
             return predicate;
             }
        };
        Page<Wiki> result = (Page<Wiki>) wikiRepository.findAll(spec, pageRequest);
        return result;
    	}
		public void delete(Long id){
			wikiRepository.delete(id);
		}
		public Wiki findWiki(Long id){
			  return wikiRepository.findOne(id);
		}
		public Wiki find(Long id){
			  return wikiRepository.findOne(id);
		}
		public void save(Wiki wiki){
			wikiRepository.save(wiki);
		}
}