package com.pzy.repository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.Wiki;
public interface WikiRepository extends PagingAndSortingRepository<Wiki, Long>,JpaSpecificationExecutor<Wiki>{
    
}

